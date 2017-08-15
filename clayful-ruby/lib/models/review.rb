module Clayful

	class Review

		@@name = 'Review'
		@@path = 'products/reviews'

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
				'path'             => '/v1/products/reviews',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/{reviewId}',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.query_by_product(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_by_product',
				'http_method'      => 'GET',
				'path'             => '/v1/products/{productId}/reviews',
				'params'           => ['productId', ],
				'args'             => args
			})

		end

		def self.list_by_product(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_product',
				'http_method'      => 'GET',
				'path'             => '/v1/products/{productId}/reviews',
				'params'           => ['productId', ],
				'args'             => args
			})

		end

		def self.query_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/products/reviews',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.list_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/products/reviews',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.create(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews',
				'params'           => [],
				'args'             => args
			})

		end

		def self.flag(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'flag',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/{reviewId}/flag',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.flag_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'flag_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/{reviewId}/flag',
				'params'           => ['reviewId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.helped(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'helped',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/{reviewId}/helped/{upDown}',
				'params'           => ['reviewId', 'upDown', ],
				'args'             => args
			})

		end

		def self.cancel_flag(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_flag',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/{reviewId}/flag/cancel',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.cancel_flag_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_flag_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/{reviewId}/flag/cancel',
				'params'           => ['reviewId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.helped_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'helped_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/{reviewId}/helped/{upDown}',
				'params'           => ['reviewId', 'upDown', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.push_to_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'push_to_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/{reviewId}/meta/{field}/push',
				'params'           => ['reviewId', 'field', ],
				'args'             => args
			})

		end

		def self.pull_from_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'pull_from_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/{reviewId}/meta/{field}/pull',
				'params'           => ['reviewId', 'field', ],
				'args'             => args
			})

		end

		def self.cancel_helped(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_helped',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/{reviewId}/helped/{upDown}/cancel',
				'params'           => ['reviewId', 'upDown', ],
				'args'             => args
			})

		end

		def self.increase_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'increase_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/{reviewId}/meta/{field}/inc',
				'params'           => ['reviewId', 'field', ],
				'args'             => args
			})

		end

		def self.cancel_helped_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_helped_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/{reviewId}/helped/{upDown}/cancel',
				'params'           => ['reviewId', 'upDown', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/products/reviews/{reviewId}',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.update_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_as_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/products/reviews/{reviewId}',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.update_as_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_as_customer',
				'http_method'      => 'PUT',
				'path'             => '/v1/customers/{customerId}/products/reviews/{reviewId}',
				'params'           => ['customerId', 'reviewId', ],
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/reviews/{reviewId}',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.delete_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_as_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/products/reviews/{reviewId}',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.delete_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_metafield',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/reviews/{reviewId}/meta/{field}',
				'params'           => ['reviewId', 'field', ],
				'args'             => args
			})

		end

	end

end