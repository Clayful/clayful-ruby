require 'test/unit'
require_relative '../lib/clayful';
require_relative '../lib/exception';

class ClayfulMainModuleTest < Test::Unit::TestCase

	def setup

		# Reset states
		Clayful.default_headers = {
			'Accept-Encoding' => 'gzip',
			'X-Clayful-SDK'   => 'clayful-ruby'
		}
		Clayful.listeners = {
			'request'  => [],
			'response' => []
		}

	end

	def test_default_options_for_api_client

		assert_equal(Clayful.base_url, 'https://api.clayful.io')
		assert_equal(Clayful.default_headers, {
			'Accept-Encoding' => 'gzip',
			'X-Clayful-SDK'   => 'clayful-ruby'
		})
		assert(Clayful.plugins['request'].is_a? Proc)
		assert_equal(Clayful.listeners, {
			'request'  => [],
			'response' => []
		})

		assert_equal(Clayful::Brand.name, 'Brand')

	end


	def test_options_to_headers

		assert_equal(Clayful.options_to_headers({}), {})

		assert_equal(Clayful.options_to_headers({
			'language'       => 'ko',
			'currency'       => 'KRW',
			'timeZone'       => 'Asia/Seoul',
			'client'         => 'client_token',
			'customer'       => 'customer_token',
			'errorLanguage'  => 'ko',
			'headers'        => {
				'X-Extra' => 'Extra'
			}
		}), {
			'Accept-Language'          => 'ko',
			'Accept-Currency'          => 'KRW',
			'Accept-Time-Zone'         => 'Asia/Seoul',
			'Authorization'            => 'Bearer client_token',
			'X-Clayful-Customer'       => 'customer_token',
			'X-Clayful-Error-Language' => 'ko',
			'X-Extra'                  => 'Extra'
		})

	end


	def test_get_api_endpoint

		endpoint = Clayful.get_endpoint('/v1/products')

		assert_equal(endpoint, Clayful.base_url + '/v1/products')

	end


	def test_normalize_query_values

		result = Clayful.normalize_query_values({
			'string'  => 'string',
			'number'  => 100,
			'boolean' => true,
			'special' => ' +&',
		})

		assert_equal(result, {
			'string'  => 'string',
			'number'  => '100',
			'boolean' => 'true',
			'special' => '%20%2B%26',
		})

	end


	def test_extract_api_request_arguments

		def build_get_delete_test_cases(m)

			[
				{
					'options' => {
						'http_method' => m,
						'path'        => '/v1/products', # no params
						'params'      => [],
						'args'        => [] # no args
					},
					'result' => {
						'http_method' => m,
						'request_url' => '/v1/products',
						'payload'     => nil,
						'query'       => {},
						'headers'     => {},
						'meta'        => {}, # default meta
					}
				},
				{
					'options' => {
						'http_method' => m,
						'path'        => '/v1/products/{productId}',
						'params'      => ['productId', ],
						'args'        => [
							'pid', # param1
							{      # queryHeaders
								'query'    => { 'raw'=> true, 'originalPrice>'=> 1000, 'type'=> 'custom' },
								'language' => 'en',
							},
						]
					},
					'result' => {
						'http_method' => m,
						'request_url' => '/v1/products/pid',
						'payload'     => nil,
						'query'       => { 'raw'=> 'true', 'originalPrice>'=> '1000', 'type'=> 'custom' }, # stringified values
						'headers'     => { 'Accept-Language'=> 'en' },
						'meta'        => {}, # default meta
					}
				}
			]

		end

		def build_post_put_test_cases(m)

			[
				{
					'options' => {
						'http_method' => m,
						'path'        => '/v1/store', # no params
						'params'      => [],
						'args'        => [
							{ 'slug' => 'new-slug' }, # payload
						]
					},
					'result' => {
						'http_method' => m,
						'request_url' => '/v1/store',
						'payload'     => { 'slug' => 'new-slug' },
						'query'       => {},
						'headers'     => {},
						'meta'        => {},
					}
				},
				{
					'options' => {
						'http_method' => m,
						'path'        => '/v1/products/{productId}',
						'params'      => ['productId', ],
						'args'        => [
							'pid', # param1
							{      # payload
								'slug' => 'new-slug'
							},
							{      # queryHeaders
								'query'    => { 'raw' => true },
								'language' => 'en',
								'meta'     => { 'data' => 'data' }
							},
						]
					},
					'result' =>   {
						'http_method' => m,
						'request_url' => '/v1/products/pid',
						'payload'     => { 'slug' => 'new-slug' },
						'query'       => { 'raw' => 'true' }, # stringified values
						'headers'     => { 'Accept-Language' => 'en' },
						'meta'        => { 'data' => 'data' }
					}
				},
				{
					'options' =>  {
						'http_method'     => m,
						'path'            => '/v1/me/products/reviews/{reviewId}/flag',
						'params'          => ['reviewId', ],
						'without_payload' => true, # no payload
						'args'            => [
							'rid', # param1
							{      # queryHeaders
								'query'    => { 'raw' => true },
								'language' => 'en',
								'meta'     => { 'data' => 'data' }
							},
						]
					},
					'result' =>   {
						'http_method' => m,
						'request_url' => '/v1/me/products/reviews/rid/flag',
						'payload'     => nil,
						'query'       => { 'raw' => 'true' }, # stringified values
						'headers'     => { 'Accept-Language' => 'en' },
						'meta'        => { 'data' => 'data' }
					}
				},
			]

		end

		cases = build_get_delete_test_cases('GET') + build_get_delete_test_cases('DELETE') + build_post_put_test_cases('POST') + build_post_put_test_cases('PUT')

		cases.each do |c|

			extracted = Clayful.extract_request_arguments(c['options']);

			assert_equal(extracted, c['result'])

		end

	end

	def test_call_api_success

		triggered = {
			'request'  => false,
			'response' => false,
		}

		# Will return { 'response': true } as mock response
		Clayful.install('request', lambda { |request_options| { 'response' => true } })

		request_callback = lambda do |detail|

			assert_equal(detail, {
				'model_name'  => 'Brand',
				'method_name' => 'query',
				'http_method' => 'GET',
				'request_url' => Clayful.base_url + '/v1/brands',
				'query'       => {},
				'headers'     => {
					'Accept-Encoding' => 'gzip',
					'Accept-Currency' => 'KRW',
					'X-Clayful-SDK'   => 'clayful-ruby'
				},
				'payload'        => nil,
				'uses_form_data' => false,
				'meta'           => {},
				'error'          => nil,
				'response'       => nil # not populated yet
			})

			# set a new data
			detail['meta']['request_called'] = true
			triggered['request'] = true

		end

		response_callback = lambda do |detail|

			assert_equal(detail, {
				'model_name'  => 'Brand',
				'method_name' => 'query',
				'http_method' => 'GET',
				'request_url' => Clayful.base_url + '/v1/brands',
				'query'       => {},
				'headers'     => {
					'Accept-Encoding' => 'gzip',
					'Accept-Currency' => 'KRW',
					'X-Clayful-SDK'   => 'clayful-ruby'
				},
				'payload'        => nil,
				'uses_form_data' => false,
				'meta'           => { 'request_called' => true }, # check new data from 'request' event
				'error'          => nil,
				'response'       => { 'response' => true } # populated
			})

			triggered['response'] = true

		end

		Clayful.on('request', request_callback)
		Clayful.on('response', response_callback)

		assert_equal(Clayful.default_headers, {
			'Accept-Encoding' => 'gzip',
			'X-Clayful-SDK'   => 'clayful-ruby'
		})

		response = Clayful.call_api({
			'model_name'  => 'Brand',
			'method_name' => 'query',
			'http_method' => 'GET',
			'path'        => '/v1/brands',
			'params'      => [],
			'args'        => [{ 'currency' => 'KRW' }, ]
		})

		assert_equal(response, { 'response' => true })
		assert_equal(triggered, {
			'request'  => true,
			'response' => true,
		})

		assert_equal(Clayful.default_headers, {
			'Accept-Encoding' => 'gzip',
			'X-Clayful-SDK'   => 'clayful-ruby'
		})

	end


	def test_call_api_with_form_data_success

		triggered = {
			'request'  => false,
			'response' => false,
		}

		# Will return { 'response': true } as mock response
		Clayful.install('request', lambda { |request_options| { 'response' => true } })

		request_callback = lambda do |detail|

			assert_equal(detail, {
				'model_name'  => 'Image',
				'method_name' => 'create',
				'http_method' => 'POST',
				'request_url' => Clayful.base_url + '/v1/images',
				'query'       => {},
				'headers'     => {
					'Accept-Encoding' => 'gzip',
					'Accept-Language' => 'ko',
					'X-Clayful-SDK'   => 'clayful-ruby'
				},
				'payload'        => { 'file' => 'file' },
				'uses_form_data' => true,
				'meta'           => {},
				'error'          => nil,
				'response'       => nil # not populated yet
			})

			# set a new data
			detail['meta']['request_called'] = true
			triggered['request'] = true

		end

		response_callback = lambda do |detail|

			assert_equal(detail, {
				'model_name'  => 'Image',
				'method_name' => 'create',
				'http_method' => 'POST',
				'request_url' => Clayful.base_url + '/v1/images',
				'query'       => {},
				'headers'     => {
					'Accept-Encoding' => 'gzip',
					'Accept-Language' => 'ko',
					'X-Clayful-SDK'   => 'clayful-ruby'
				},
				'payload'        => { 'file' => 'file' },
				'uses_form_data' => true,
				'meta'           => { 'request_called' => true },
				'error'          => nil,
				'response'       => { 'response' => true }
			})

			triggered['response'] = true

		end

		Clayful.on('request', request_callback)
		Clayful.on('response', response_callback)

		assert_equal(Clayful.default_headers, {
			'Accept-Encoding' => 'gzip',
			'X-Clayful-SDK'   => 'clayful-ruby'
		})

		response = Clayful.call_api({
			'model_name'     => 'Image',
			'method_name'    => 'create',
			'http_method'    => 'POST',
			'path'           => '/v1/images',
			'params'         => [],
			'uses_form_data' => true, # Test form data
			'args'           => [
				{ 'file' => 'file' },
				{ 'language' => 'ko' },
			]
		})

		assert_equal(response, { 'response' => true })
		assert_equal(triggered, {
			'request'  => true,
			'response' => true,
		})

		assert_equal(Clayful.default_headers, {
			'Accept-Encoding' => 'gzip',
			'X-Clayful-SDK'   => 'clayful-ruby'
		})

	end


	def test_call_api_fail_with_clayful_error

		triggered = {
			'request'  => false,
			'response' => false,
		}

		error = Clayful::Exception.new

		# Will raise Clayful::Exception
		Clayful.install('request', lambda { |request_options| raise error })

		request_callback = lambda do |detail|

			assert_equal(detail, {
				'model_name'  => 'Brand',
				'method_name' => 'query',
				'http_method' => 'GET',
				'request_url' => Clayful.base_url + '/v1/brands',
				'query'       => {},
				'headers'     => {
					'Accept-Encoding' => 'gzip',
					'Accept-Currency' => 'KRW',
					'X-Clayful-SDK'   => 'clayful-ruby'
				},
				'payload'        => nil,
				'uses_form_data' => false,
				'meta'           => {},
				'error'          => nil, # not populated yet
				'response'       => nil
			})

			# set a new data
			detail['meta']['request_called'] = true
			triggered['request'] = true

		end

		response_callback = lambda do |detail|

			assert_equal(detail, {
				'model_name'  => 'Brand',
				'method_name' => 'query',
				'http_method' => 'GET',
				'request_url' => Clayful.base_url + '/v1/brands',
				'query'       => {},
				'headers'     => {
					'Accept-Encoding' => 'gzip',
					'Accept-Currency' => 'KRW',
					'X-Clayful-SDK'   => 'clayful-ruby'
				},
				'payload'        => nil,
				'uses_form_data' => false,
				'meta'           => { 'request_called' => true }, # check data
				'error'          => error, # populated
				'response'       => nil
			})

			triggered['response'] = true

		end

		Clayful.on('request', request_callback)
		Clayful.on('response', response_callback)

		begin

			response = Clayful.call_api({
				'model_name'  => 'Brand',
				'method_name' => 'query',
				'http_method' => 'GET',
				'path'        => '/v1/brands',
				'params'      => [],
				'args'        => [{ 'currency' => 'KRW' }, ]
			})

			# Just to check Clayful::Exception raise
			assert_equal(1, 2)

		rescue Clayful::Exception => e

			assert_equal(e, error)
			assert_equal(triggered, {
				'request'  => true,
				'response' => true, # should've been triggered
			})

		end

	end


	def test_call_api_fail_with_other_error

		triggered = {
			'request'  => false,
			'response' => false,
		}

		error = StandardError.new('Just an error')

		# Will raise StandardError
		Clayful.install('request', lambda { |request_options| raise error })

		request_callback = lambda { |detail| triggered['request'] = true }
		response_callback = lambda { |detail| triggered['response'] = true }

		Clayful.on('request', request_callback)
		Clayful.on('response', response_callback)

		begin

			response = Clayful.call_api({
				'model_name'  => 'Brand',
				'method_name' => 'query',
				'http_method' => 'GET',
				'path'        => '/v1/brands',
				'params'      => [],
				'args'        => [{ 'currency' => 'KRW' }, ]
			})

			# Just to check StandardError raise
			assert_equal(1, 2)

		rescue StandardError => e

			assert_equal(e, error)
			assert_equal(triggered, {
				'request'  => true,
				'response' => false, # shouldn't have been triggered
			})

		end

	end


	def test_config_api_client

		Clayful.config({
			'language'       => 'ko',
			'currency'       => 'KRW',
			'timeZone'       => 'Asia/Seoul',
			'client'         => 'client_token',
			'customer'       => 'customer_token',
			'errorLanguage'  => 'ko',
			'headers'        => {
				'X-Extra' => 'Extra'
			}
		})

		assert_equal(Clayful.default_headers, {
			'Accept-Encoding'          => 'gzip', # default value
			'Accept-Language'          => 'ko',
			'Accept-Currency'          => 'KRW',
			'Accept-Time-Zone'         => 'Asia/Seoul',
			'Authorization'            => 'Bearer client_token',
			'X-Clayful-Customer'       => 'customer_token',
			'X-Clayful-Error-Language' => 'ko',
			'X-Clayful-SDK'            => 'clayful-ruby',
			'X-Extra'                  => 'Extra'
		})

	end

	def test_install_request_middleware

		request = lambda {}

		Clayful.install('request', request)

		assert_equal(Clayful.plugins['request'], request)

	end


	def test_event_listeners

		triggered = {
			'request'  => nil,
			'response' => nil
		}

		assert_equal(Clayful.listeners['request'].length, 0)
		assert_equal(Clayful.listeners['response'].length, 0)

		request_callback = lambda do |data|
			triggered['request'] = data
		end
		response_callback = lambda do |data|
			triggered['response'] = data
		end

		Clayful.on('request', request_callback)
		Clayful.on('response', response_callback)

		assert_equal(Clayful.listeners['request'].length, 1)
		assert_equal(Clayful.listeners['response'].length, 1)
		assert_equal(Clayful.listeners['request'][0], request_callback)
		assert_equal(Clayful.listeners['response'][0], response_callback)

		Clayful.trigger('request', 1)
		Clayful.trigger('response', 2)

		assert_equal(triggered, {
			'request'  => 1,
			'response' => 2
		})

		Clayful.off('request', request_callback)
		Clayful.off('response', response_callback)

		assert_equal(Clayful.listeners['request'].length, 0)
		assert_equal(Clayful.listeners['response'].length, 0)

	end


	def test_format_image_url

		url = 'http://clayful.io'

		cases = [
			{
				'out' => url
			},
			{
				'out'     => url,
				'options' => {}
			},
			{
				'out'     => url + '?width=120',
				'options' => { 'width' => 120 }
			},
			{
				'out'     => url + '?width=120&height=120',
				'options' => { 'width' => 120, 'height' => 120 }
			}
		]

		cases.each do |c|

			if c['options']

				assert_equal(Clayful.format_image_url(url, c['options']), c['out'])
			else

				assert_equal(Clayful.format_image_url(url), c['out'])
			end

		end

	end

	def test_format_number

		cases = [
			{
				'in'  => nil,
				'out' => ''
			},
			{
				'in'  => 0,
				'out' => '0'
			},
			{
				'in'  => 10,
				'out' => '10'
			},
			{
				'options' => {},
				'in'      => 10,
				'out'     => '10'
			},
			# precision tests
			{
				'in'  => 0.250,
				'out' => '0.25'
			},
			{
				'options' => { 'precision' => 0 },
				'in'      => 0,
				'out'     => '0'
			},
			{
				'options' => { 'precision' => 0 },
				'in'      => 1234567.25,
				'out'     => '1234567'
			},
			{
				'options' => { 'precision' => 1 },
				'in'      => 1234567.24,
				'out'     => '1234567.2' # rounded
			},
			{
				'options' => { 'precision' => 1 },
				'in'      => 1234567.25,
				'out'     => '1234567.3' # rounded
			},
			{
				'options' => { 'precision' => 2 },
				'in'      => 1234567.25,
				'out'     => '1234567.25'
			},
			{
				'options' => { 'precision' => 3 },
				'in'      => 1234567.25,
				'out'     => '1234567.250'
			},
			{
				'options' => { 'precision' => 0 },
				'in'      => 1234567,
				'out'     => '1234567'
			},
			{
				'options' => { 'precision' => 3 },
				'in'      => 1234567,
				'out'     => '1234567.000'
			},
			# delimiter tests
			{
				'options' => {
					'precision' => 3
				},
				'in'  => 1234567.25,
				'out' => '1234567.250'
			},
			{
				'options' => {
					'precision' => 3,
					'delimiter' => {}
				},
				'in'  => 1234567.25,
				'out' => '1234567.250'
			},
			{
				'options' => {
					'precision' => 3,
					'delimiter' => {
						'thousands' => ','
					}
				},
				'in'  => 1234567.25,
				'out' => '1,234,567.250'
			},
			{
				'options' => {
					'precision' => 3,
					'delimiter' => {
						'thousands' => ' ',
						'decimal'   => ','
					}
				},
				'in'  => 1234567.25,
				'out' => '1 234 567,250'
			},
		]

		cases.each do |c|

			if c['options']

				assert_equal(Clayful.format_number(c['in'], c['options']), c['out'])
			else

				assert_equal(Clayful.format_number(c['in']), c['out'])
			end

		end

	end


	def test_format_price

		cases = [
			{
				'in'  => nil,
				'out' => ''
			},
			{
				'in'  => 0,
				'out' => '0'
			},
			{
				'options' => {},
				'in'      => 0,
				'out'     => '0'
			},
			{
				'in'  => 1234567.25,
				'out' => '1234567.25'
			},
			{
				'options' => {},
				'in'      => 1234567.25,
				'out'     => '1234567.25'
			},
			{
				'options' => {
					'symbol'    => '$',
					'format'    => '{symbol}{price}',
					'precision' => 2,
					'delimiter' => {
						'thousands' => ',',
						'decimal'   => '.'
					}
				},
				'in'  => 1234567.25,
				'out' => '$1,234,567.25'
			},
			{
				'options' => {
					'symbol'    => 'won',
					'format'    => '{price} {symbol}',
					'precision' => 0,
					'delimiter' => {
						'thousands' => ',',
						'decimal'   => '.'
					}
				},
				'in'  => 1234567.25,
				'out' => '1,234,567 won'
			}
		]

		cases.each do |c|

			if c['options']

				assert_equal(Clayful.format_price(c['in'], c['options']), c['out'])
			else

				assert_equal(Clayful.format_price(c['in']), c['out'])
			end

		end

	end

end