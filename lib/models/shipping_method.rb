module Clayful

	class ShippingMethod

		@@name = 'ShippingMethod'
		@@path = 'shipping/methods'

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
				'path'             => '/v1/shipping/methods/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/shipping/methods/{shippingMethodId}',
				'params'           => ['shippingMethodId', ],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/shipping/methods',
				'params'           => [],
				'args'             => args
			})

		end

	end

end