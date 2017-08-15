module Clayful

	class ReviewComment

		@@name = 'ReviewComment'
		@@path = 'products/reviews/comments'

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
				'path'             => '/v1/products/reviews/comments',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/comments',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/comments/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}',
				'params'           => ['reviewCommentId', ],
				'args'             => args
			})

		end

		def self.query_by_review(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_by_review',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/{reviewId}/comments',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.list_by_review(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_review',
				'http_method'      => 'GET',
				'path'             => '/v1/products/reviews/{reviewId}/comments',
				'params'           => ['reviewId', ],
				'args'             => args
			})

		end

		def self.query_by_author(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_by_author',
				'http_method'      => 'GET',
				'path'             => '/v1/{authorModel}/{authorId}/products/reviews/comments',
				'params'           => ['authorModel', 'authorId', ],
				'args'             => args
			})

		end

		def self.list_by_author(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_author',
				'http_method'      => 'GET',
				'path'             => '/v1/{authorModel}/{authorId}/products/reviews/comments',
				'params'           => ['authorModel', 'authorId', ],
				'args'             => args
			})

		end

		def self.create(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/comments',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/comments',
				'params'           => [],
				'args'             => args
			})

		end

		def self.flag(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'flag',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}/flag',
				'params'           => ['reviewCommentId', ],
				'args'             => args
			})

		end

		def self.flag_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'flag_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/comments/{reviewCommentId}/flag',
				'params'           => ['reviewCommentId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.cancel_flag(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_flag',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}/flag/cancel',
				'params'           => ['reviewCommentId', ],
				'args'             => args
			})

		end

		def self.cancel_flag_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_flag_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/products/reviews/comments/{reviewCommentId}/flag/cancel',
				'params'           => ['reviewCommentId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.increase_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'increase_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}/meta/{field}/inc',
				'params'           => ['reviewCommentId', 'field', ],
				'args'             => args
			})

		end

		def self.push_to_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'push_to_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}/meta/{field}/push',
				'params'           => ['reviewCommentId', 'field', ],
				'args'             => args
			})

		end

		def self.pull_from_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'pull_from_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}/meta/{field}/pull',
				'params'           => ['reviewCommentId', 'field', ],
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}',
				'params'           => ['reviewCommentId', ],
				'args'             => args
			})

		end

		def self.update_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_as_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/products/reviews/comments/{reviewCommentId}',
				'params'           => ['reviewCommentId', ],
				'args'             => args
			})

		end

		def self.update_as_author(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_as_author',
				'http_method'      => 'PUT',
				'path'             => '/v1/{authorModel}/{authorId}/products/reviews/comments/{reviewCommentId}',
				'params'           => ['authorModel', 'authorId', 'reviewCommentId', ],
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}',
				'params'           => ['reviewCommentId', ],
				'args'             => args
			})

		end

		def self.delete_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_as_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/products/reviews/comments/{reviewCommentId}',
				'params'           => ['reviewCommentId', ],
				'args'             => args
			})

		end

		def self.delete_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_metafield',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/reviews/comments/{reviewCommentId}/meta/{field}',
				'params'           => ['reviewCommentId', 'field', ],
				'args'             => args
			})

		end

	end

end