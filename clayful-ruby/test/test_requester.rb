require 'fakeweb'
require 'json'
require_relative '../lib/exception'
require_relative '../lib/requester'
require_relative '../lib/response'

FakeWeb.register_uri(
	:any,
	'https://api.clayful.io/v1/products',
	:body => { 'response' => true }.to_json,
	:status => 200,
	:content_type => 'application/json'
)

FakeWeb.register_uri(
	:any,
	'https://api.clayful.io/v1/products?hello=world',
	:body => { 'response' => true }.to_json,
	:status => 200,
	:content_type => 'application/json'
)

FakeWeb.register_uri(
	:delete,
	'https://api.clayful.io/v1/products/productId',
	:status => 204,
	:content_type => 'application/json'
)

FakeWeb.register_uri(
	:get,
	'https://api.clayful.io/v1/products/400Error',
	:status => 400,
	:body => {
		'errorCode'  => 'g-validation',
		'message'    => 'Validation Error',
		'validation' => { 'test' => 'value' }
	}.to_json,
	:content_type => 'application/json'
)

class ClayfulRequesterTest < Test::Unit::TestCase

	def test_simple_get

		res = Clayful::Requester.request.call({
			'http_method'      => 'GET',
			'request_url'      => 'https://api.clayful.io/v1/products',
			'payload'          => nil,
			'query'            => {},
			'headers'          => {},
			'model_name'       => 'Product',
			'method_name'      => 'query',
			'uses_form_data'   => false,
		})

		assert_equal(res.status, 200)
		assert_equal(res.headers, { :content_type => 'application/json' })
		assert_equal(res.data, { 'response' => true })

		req = FakeWeb.last_request

		assert_equal(req.method, 'GET')
		assert_equal(req.uri.to_s, 'https://api.clayful.io/v1/products')

	end

	def test_get_with_query_headers

		res = Clayful::Requester.request.call({
			'http_method'      => 'GET',
			'request_url'      => 'https://api.clayful.io/v1/products',
			'payload'          => nil,
			'query'            => { 'hello' => 'world' },
			'headers'          => { 'X-Test' => 'true' },
			'model_name'       => 'Product',
			'method_name'      => 'query',
			'uses_form_data'   => false,
		})

		assert_equal(res.status, 200)
		assert_equal(res.headers, { :content_type => 'application/json' })
		assert_equal(res.data, { 'response' => true })

		req = FakeWeb.last_request
		headers = req.to_hash

		assert_equal(req.method, 'GET')
		assert_equal(req.uri.to_s, 'https://api.clayful.io/v1/products?hello=world')
		assert_equal(headers['x-test'], ['true'])

	end

	def test_with_json_payload

		res = Clayful::Requester.request.call({
			'http_method'      => 'POST',
			'request_url'      => 'https://api.clayful.io/v1/products',
			'payload'          => { 'slug' => 'new_slug' },
			'query'            => {},
			'headers'          => {},
			'model_name'       => 'Product',
			'method_name'      => 'query',
			'uses_form_data'   => false,
		})

		assert_equal(res.status, 200)
		assert_equal(res.headers, { :content_type => 'application/json' })
		assert_equal(res.data, { 'response' => true })

		req = FakeWeb.last_request
		headers = req.to_hash

		assert_equal(req.method, 'POST')
		assert_equal(req.uri.to_s, 'https://api.clayful.io/v1/products')
		assert_equal(headers['content-type'], ['application/json'])

	end

	def test_with_multipart_form_data

		res = Clayful::Requester.request.call({
			'http_method'      => 'POST',
			'request_url'      => 'https://api.clayful.io/v1/products',
			'payload'          => { 'file'  => File.new(File.join(File.dirname(__FILE__), 'data', 'blob')) },
			'query'            => {},
			'headers'          => {},
			'model_name'       => 'Product',
			'method_name'      => 'create',
			'uses_form_data'   => true,
		})

		assert_equal(res.status, 200)
		assert_equal(res.headers, { :content_type => 'application/json' })
		assert_equal(res.data, { 'response' => true })

		req = FakeWeb.last_request
		headers = req.to_hash

		assert_equal(req.method, 'POST')
		assert_equal(req.uri.to_s, 'https://api.clayful.io/v1/products')
		assert_equal(headers['content-type'][0].split(';')[0], 'multipart/form-data')

	end

	def test_empty_response

		res = Clayful::Requester.request.call({
			'http_method'      => 'DELETE',
			'request_url'      => 'https://api.clayful.io/v1/products/productId',
			'payload'          => nil,
			'query'            => {},
			'headers'          => {},
			'model_name'       => 'Product',
			'method_name'      => 'delete',
			'uses_form_data'   => false,
		})

		assert_equal(res.status, 204)
		assert_equal(res.headers, { :content_type => 'application/json' })
		assert_equal(res.data, nil)

		req = FakeWeb.last_request

		assert_equal(req.method, 'DELETE')
		assert_equal(req.uri.to_s, 'https://api.clayful.io/v1/products/productId')

	end

	def test_clayful_exception

		begin

			res = Clayful::Requester.request.call({
				'http_method'      => 'GET',
				'request_url'      => 'https://api.clayful.io/v1/products/400Error',
				'payload'          => nil,
				'query'            => {},
				'headers'          => {},
				'model_name'       => 'Product',
				'method_name'      => 'get',
				'uses_form_data'   => false,
			})

			# Just to check raise
			assert_equal(1, 2)

		rescue Clayful::Exception => e

			assert_equal(e.is_clayful, true)
			assert_equal(e.model, 'Product')
			assert_equal(e.method, 'get')
			assert_equal(e.status, 400)
			assert_equal(e.headers, { :content_type => 'application/json' })
			assert_equal(e.code, 'g-validation')
			assert_equal(e.message, 'Validation Error')
			assert_equal(e.validation, { 'test' => 'value' })

		end

	end

end