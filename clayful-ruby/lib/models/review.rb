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

		def self.list_published(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_published',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/published',
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

		def self.count_published(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_published',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/published/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get_published(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_published',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/published/{reviewId}',
				'params'           => ['reviewId', ],
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

		def self.create_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_for_me',
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
				'path'             => '/v1/products/reviews/{reviewId}/flags',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.flag_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'flag_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/{reviewId}/flags',
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

		def self.helped_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'helped_for_me',
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

		def self.update_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/products/reviews/{reviewId}',
				'params'           => ['reviewId', ],
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

		def self.delete_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/products/reviews/{reviewId}',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.cancel_flag_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_flag_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/products/reviews/{reviewId}/flags',
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

		def self.cancel_flag(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_flag',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/reviews/{reviewId}/flags/{customerId}',
				'params'           => ['reviewId', 'customerId', ],
				'args'             => args
			})

		end

		def self.cancel_helped_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_helped_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/products/reviews/{reviewId}/helped/{upDown}',
				'params'           => ['reviewId', 'upDown', ],
				'args'             => args
			})

		end

		def self.cancel_helped(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_helped',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/reviews/{reviewId}/helped/{upDown}/{customerId}',
				'params'           => ['reviewId', 'upDown', 'customerId', ],
				'args'             => args
			})

		end

	end

end