require 'rest-client'
require 'json'
require_relative './exception'
require_relative './response'

module Clayful

	class Requester

		@@request = lambda do |request_options|

			query = []

			request_options.fetch('query', {}).each do |key, value|
				query.push("#{key}=#{value}")
			end

			query = query.empty? ? '' : '?' + query.join('&')

			options = {
				method:  request_options['http_method'].downcase.to_sym,
				url:     request_options['request_url'] + query,
				headers: request_options['headers'].clone
			}

			if request_options['payload']

				if request_options['uses_form_data']

					options[:payload] = request_options['payload']
				else
					# Set JSON as a request body
					options[:payload] = request_options['payload'].to_json
					options[:headers]['Content-Type'] = 'application/json'
				end

			end

			response = {}
			data = nil

			begin
				# 2xx case
				response = RestClient::Request.execute(options)

			rescue RestClient::ExceptionWithResponse => e
				# 4xx, 5xx case
				response = e.response
			end

			begin

				data = JSON.parse(response.body)

			rescue JSON::ParserError

				data = nil
			end

			if response.code >= 400

				data = data ? data : {}

				raise Clayful::Exception.new(
					request_options.fetch('model_name', nil),
					request_options.fetch('method_name', nil),
					response.code,
					response.headers,
					data.fetch('errorCode', nil),
					data.fetch('message', ''),
					data.fetch('validation', nil)
				)

			else

				return Clayful::Response.new(
					response.code,
					data,
					response.headers
				)

			end

		end

		def Requester.request
			@@request
		end

	end

end