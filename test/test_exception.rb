require 'test/unit'
require_relative '../lib/exception';

class ClayfulExceptionTest < Test::Unit::TestCase

	def test_clayful_error_constructor_default_values()

		error = Clayful::Exception.new()

		assert_equal(error.is_clayful, true)
		assert_equal(error.model, nil)
		assert_equal(error.method, nil)
		assert_equal(error.status, nil)
		assert_equal(error.headers, nil)
		assert_equal(error.code, nil)
		assert_equal(error.message, '')
		assert_equal(error.validation, nil)

	end

	def test_clayful_error_constructor()

		error = Clayful::Exception.new(
			'Brand',
			'get',
			400,
			{ 'Content-Language' => 'en' },
			'g-no-model',
			'my message',
			{ 'data' => 'data' }
		)

		assert_equal(error.is_clayful, true)
		assert_equal(error.model, 'Brand')
		assert_equal(error.method, 'get')
		assert_equal(error.status, 400)
		assert_equal(error.headers, { 'Content-Language' => 'en' })
		assert_equal(error.code, 'g-no-model')
		assert_equal(error.message, 'my message')
		assert_equal(error.validation, { 'data' => 'data' })

	end

	def test_raise_clayful_error()

		assert_raise(Clayful::Exception) {

			raise Clayful::Exception.new

		}

	end

end