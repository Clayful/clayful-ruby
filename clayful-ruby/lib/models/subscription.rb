module Clayful

	class Subscription

		@@name = 'Subscription'
		@@path = ''

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
				'path'             => '/v1/subscriptions',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/subscriptions',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/subscriptions/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/subscriptions/{subscriptionId}',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.query_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/subscriptions',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.list_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/subscriptions',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.reject(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'reject',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/reject',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.cancel(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/cancel',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.start(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'start',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/start',
				'params'           => ['subscriptionId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/subscriptions/{subscriptionId}',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

	end

end