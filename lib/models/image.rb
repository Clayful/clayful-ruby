module Clayful

	class Image

		@@name = 'Image'
		@@path = 'images'

		def self.name
			@@name
		end

		def self.path
			@@path
		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/images/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/images/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create',
				'http_method'      => 'POST',
				'path'             => '/v1/images',
				'params'           => [],
				'uses_form_data'   => true,
				'args'             => args
			})

		end

		def self.create_as_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_as_customer',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/images',
				'params'           => ['customerId', ],
				'uses_form_data'   => true,
				'args'             => args
			})

		end

		def self.create_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/images',
				'params'           => [],
				'uses_form_data'   => true,
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/images/{imageId}',
				'params'           => ['imageId', ],
				'args'             => args
			})

		end

		def self.delete_as_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_as_customer',
				'http_method'      => 'DELETE',
				'path'             => '/v1/customers/{customerId}/images/{imageId}',
				'params'           => ['customerId', 'imageId', ],
				'args'             => args
			})

		end

		def self.delete_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/images/{imageId}',
				'params'           => ['imageId', ],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/images/{imageId}',
				'params'           => ['imageId', ],
				'args'             => args
			})

		end

		def self.get_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/images/{imageId}',
				'params'           => ['imageId', ],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/images',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/images',
				'params'           => [],
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/images/{imageId}',
				'params'           => ['imageId', ],
				'uses_form_data'   => true,
				'args'             => args
			})

		end

		def self.update_as_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_as_customer',
				'http_method'      => 'PUT',
				'path'             => '/v1/customers/{customerId}/images/{imageId}',
				'params'           => ['customerId', 'imageId', ],
				'uses_form_data'   => true,
				'args'             => args
			})

		end

		def self.update_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/images/{imageId}',
				'params'           => ['imageId', ],
				'uses_form_data'   => true,
				'args'             => args
			})

		end

	end

end