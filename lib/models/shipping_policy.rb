module Clayful

	class ShippingPolicy

		@@name = 'ShippingPolicy'
		@@path = 'shipping/policies'

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
				'path'             => '/v1/shipping/policies/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/shipping/policies/{shippingPolicyId}',
				'params'           => ['shippingPolicyId', ],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/shipping/policies',
				'params'           => [],
				'args'             => args
			})

		end

	end

end