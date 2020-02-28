module Clayful

	class Customer

		@@name = 'Customer'
		@@path = 'customers'

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
				'path'             => '/v1/customers',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me',
				'params'           => [],
				'args'             => args
			})

		end

		def self.is_authenticated(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'is_authenticated',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/auth',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.list_coupons_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_coupons_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/coupons',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list_coupons(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_coupons',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/coupons',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.count_coupons_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_coupons_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/coupons/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count_coupons(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_coupons',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/coupons/count',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.list_by_flag_votes(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_flag_votes',
				'http_method'      => 'GET',
				'path'             => '/v1/{voteModel}/{voteModelId}/flags/customers',
				'params'           => ['voteModel', 'voteModelId', ],
				'args'             => args
			})

		end

		def self.list_by_flag_votes(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_flag_votes',
				'http_method'      => 'GET',
				'path'             => '/v1/{voteModel}/{voteModelId}/flags/customers',
				'params'           => ['voteModel', 'voteModelId', ],
				'args'             => args
			})

		end

		def self.list_by_help_votes(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_help_votes',
				'http_method'      => 'GET',
				'path'             => '/v1/{voteModel}/{voteModelId}/helped/{upDown}/customers',
				'params'           => ['voteModel', 'voteModelId', 'upDown', ],
				'args'             => args
			})

		end

		def self.list_by_help_votes(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_help_votes',
				'http_method'      => 'GET',
				'path'             => '/v1/{voteModel}/{voteModelId}/helped/{upDown}/customers',
				'params'           => ['voteModel', 'voteModelId', 'upDown', ],
				'args'             => args
			})

		end

		def self.create(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create',
				'http_method'      => 'POST',
				'path'             => '/v1/customers',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me',
				'params'           => [],
				'args'             => args
			})

		end

		def self.authenticate(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'authenticate',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/auth',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create_verification(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_verification',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/verifications',
				'params'           => [],
				'args'             => args
			})

		end

		def self.authenticate_by_3rd_party(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'authenticate_by_3rd_party',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/auth/{vendor}',
				'params'           => ['vendor', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.request_verification_email(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'request_verification_email',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/verifications/emails',
				'params'           => [],
				'args'             => args
			})

		end

		def self.request_verification(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'request_verification',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/verifications/{channelSlug}',
				'params'           => ['channelSlug', ],
				'args'             => args
			})

		end

		def self.add_coupon(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'add_coupon',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/coupons',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.verify(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'verify',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/verified',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.increase_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'increase_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/meta/{field}/inc',
				'params'           => ['customerId', 'field', ],
				'args'             => args
			})

		end

		def self.push_to_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'push_to_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/meta/{field}/push',
				'params'           => ['customerId', 'field', ],
				'args'             => args
			})

		end

		def self.pull_from_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'pull_from_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/meta/{field}/pull',
				'params'           => ['customerId', 'field', ],
				'args'             => args
			})

		end

		def self.update_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me',
				'params'           => [],
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/customers/{customerId}',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.update_credentials_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_credentials_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/credentials',
				'params'           => [],
				'args'             => args
			})

		end

		def self.update_credentials(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_credentials',
				'http_method'      => 'PUT',
				'path'             => '/v1/customers/{customerId}/credentials',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.reset_password(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'reset_password',
				'http_method'      => 'PUT',
				'path'             => '/v1/customers/{customerId}/password',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.delete_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me',
				'params'           => [],
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/customers/{customerId}',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.delete_coupon_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_coupon_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/coupons/{couponId}',
				'params'           => ['couponId', ],
				'args'             => args
			})

		end

		def self.delete_coupon(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_coupon',
				'http_method'      => 'DELETE',
				'path'             => '/v1/customers/{customerId}/coupons/{couponId}',
				'params'           => ['customerId', 'couponId', ],
				'args'             => args
			})

		end

		def self.delete_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_metafield',
				'http_method'      => 'DELETE',
				'path'             => '/v1/customers/{customerId}/meta/{field}',
				'params'           => ['customerId', 'field', ],
				'args'             => args
			})

		end

	end

end