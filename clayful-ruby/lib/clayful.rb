require_relative './exception'
require_relative './requester'
require_relative './models/binder'

module Clayful

	@@base_url = 'https://api.clayful.io'

	@@default_headers = {
		'Accept-Encoding' => 'gzip',
		'X-Clayful-SDK'   => 'clayful-ruby'
	}

	@@plugins = {
		'request' => Clayful::Requester.request
	}

	@@listeners = {
		'request'  => [],
		'response' => []
	}


	def self.base_url; @@base_url end;
	def self.base_url=v; @@base_url = v end;

	def self.default_headers; @@default_headers end;
	def self.default_headers=v; @@default_headers = v end;

	def self.plugins; @@plugins end;
	def self.plugins=v; @@plugins = v end;

	def self.listeners; @@listeners end;
	def self.listeners=v; @@listeners = v end;


	def self.options_to_headers(o = {})

		headers = {}

		if o['language']
			headers['Accept-Language'] = o['language']
		end

		if o['currency']
			headers['Accept-Currency'] = o['currency']
		end

		if o['time_zone']
			headers['Accept-Time-Zone'] = o['time_zone']
		end

		if o['client']
			headers['Authorization'] = 'Bearer ' + o['client']
		end

		if o['customer']
			headers['X-Clayful-Customer-Authorization'] = 'Bearer ' + o['customer']
		end

		if o['error_language']
			headers['X-Clayful-Error-Language'] = o['error_language']
		end

		if o['headers']
			headers = headers.merge(o['headers'])
		end

		headers

	end


	def self.get_endpoint(path)

		@@base_url + path

	end


	def self.normalize_query_values(query = {})

		Hash[ query.map { |k, v| [k.to_s, v.to_s] } ]

	end


	def self.extract_request_arguments(options = {})

		result = {
			'http_method' => options['http_method'],
			'request_url' => options['path'],
			'payload'     => nil,
			'query'       => {},
			'headers'     => {},
			'meta'        => {}
		}

		rest = options['args'].slice(options['params'].length..-1)

		options['params'].each.with_index do |key, i|

			result['request_url'] = result['request_url'].sub('{' + key + '}', options['args'][i].to_s)
		end

		http_method = options['http_method']

		if (http_method == 'POST' or http_method == 'PUT') and (not options['without_payload'])

			result['payload'] = rest.shift
		end

		query_headers = rest[0] ? rest[0] : {}
		query = query_headers.fetch('query', {})
		meta = query_headers.fetch('meta', {})

		result['query'] = self.normalize_query_values(query)
		result['headers'] = self.options_to_headers(query_headers)
		result['meta'] = meta

		result

	end


	def self.call_api(options)

		extracted = self.extract_request_arguments(options)

		extracted = extracted.merge({
			'request_url'    => self.get_endpoint(extracted['request_url']),
			'model_name'     => options['model_name'],
			'method_name'    => options['method_name'],
			'uses_form_data' => !!options['uses_form_data'],
			'error'          => nil,
			'response'       => nil,
		})

		# Extend default headers with header options
		extracted['headers'] = @@default_headers.clone.merge(extracted['headers'])

		self.trigger('request', extracted)

		begin

			response = self.plugins['request'].call(extracted)

			extracted['response'] = response

			self.trigger('response', extracted)

			return response

		rescue Clayful::Exception => e

			extracted['error'] = e

			self.trigger('response', extracted)

			raise # re-raise the error

		end

	end


	def self.config(options = {})

		headers = self.options_to_headers(options)

		@@default_headers = @@default_headers.merge(headers)

	end


	def self.install(scope, plugin)

		if @@plugins[scope]

			@@plugins[scope] = plugin
		end

	end


	def self.on(event_name, callback)

		listeners = @@listeners[event_name]

		if listeners

			listeners.push(callback)
		end

	end


	def self.off(event_name, callback)

		listeners = @@listeners[event_name]

		if listeners

			listeners.delete(callback)
		end

	end


	def self.trigger(event_name, data)

		listeners = @@listeners[event_name]

		if listeners

			listeners.each do |listener|

				listener.call(data)
			end
		end

	end


	def self.format_image_url(base_url, options = {})

		query = []

		normalized = self.normalize_query_values(options)

		normalized.each do |k, v|
			query.push("#{k}=#{v}")
		end

		query = query.join('&')

		query.empty? ? base_url : base_url + '?' + query

	end


	def self.format_number(number, currency = {})

		if not number.is_a? Numeric

			return ''
		end

		precision = currency.fetch('precision', nil)
		delimiter = currency.fetch('delimiter', {})
		thousands = delimiter.fetch('thousands', '')
		decimal = delimiter.fetch('decimal', '.')

		if precision.is_a? Numeric

			# Conver to float to keep '.n'
			n = (10 ** precision).to_f

			number = (number * n).round / n

			# To deal with 0.0 case..
			if precision == 0

				number = number.round
			end

		end

		a, b = number.to_s.split('.')

		a = a.reverse.scan(/.{1,3}/).join(thousands).reverse
		b = b ? b : ''

		if precision.is_a? Numeric

			diff = precision - b.length
			diff = diff < 0 ? 0 : diff

			b += '0' * diff

		end

		decimal = b.empty? ? '' : decimal

		[a, b].join(decimal)

	end


	def self.format_price(number, currency = {})

		formatted_number = self.format_number(number, currency)

		if formatted_number.empty?

			return ''
		end

		symbol = currency.fetch('symbol', '')
		format_string = currency.fetch('format', '{price}')

		format_string
			.sub('{symbol}', symbol)
			.sub('{price}', formatted_number)

	end

end