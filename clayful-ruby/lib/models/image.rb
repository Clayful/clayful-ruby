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

		def self.query(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query',
				'http_method'      => 'GET',
				'path'             => '/v1/images',
				'params'           => [],
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

		def self.add_to_review_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'add_to_review_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/{reviewId}/images',
				'params'           => ['reviewId', ],
				'uses_form_data'   => true,
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

		def self.delete_from_review_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_from_review_as_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/products/reviews/{reviewId}/images/{imageId}',
				'params'           => ['reviewId', 'imageId', ],
				'args'             => args
			})

		end

	end

end