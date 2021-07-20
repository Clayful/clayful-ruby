module Clayful

	class Coupon

		@@name = 'Coupon'
		@@path = 'coupons'

		def self.name
			@@name
		end

		def self.path
			@@path
		end

		def self.add_total_amount(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'add_total_amount',
				'http_method'      => 'POST',
				'path'             => '/v1/coupons/{couponId}/amount/total',
				'params'           => ['couponId', ],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/coupons/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create',
				'http_method'      => 'POST',
				'path'             => '/v1/coupons',
				'params'           => [],
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/coupons/{couponId}',
				'params'           => ['couponId', ],
				'args'             => args
			})

		end

		def self.delete_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_metafield',
				'http_method'      => 'DELETE',
				'path'             => '/v1/coupons/{couponId}/meta/{field}',
				'params'           => ['couponId', 'field', ],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/coupons/{couponId}',
				'params'           => ['couponId', ],
				'args'             => args
			})

		end

		def self.increase_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'increase_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/coupons/{couponId}/meta/{field}/inc',
				'params'           => ['couponId', 'field', ],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/coupons',
				'params'           => [],
				'args'             => args
			})

		end

		def self.pull_from_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'pull_from_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/coupons/{couponId}/meta/{field}/pull',
				'params'           => ['couponId', 'field', ],
				'args'             => args
			})

		end

		def self.push_to_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'push_to_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/coupons/{couponId}/meta/{field}/push',
				'params'           => ['couponId', 'field', ],
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/coupons/{couponId}',
				'params'           => ['couponId', ],
				'args'             => args
			})

		end

	end

end