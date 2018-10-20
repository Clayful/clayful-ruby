module Clayful

	class Tracker

		@@name = 'Tracker'
		@@path = ''

		def self.name
			@@name
		end

		def self.path
			@@path
		end

		def self.get_by_customer_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_by_customer_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/tracker',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/trackers/{trackerId}',
				'params'           => ['trackerId', ],
				'args'             => args
			})

		end

		def self.get_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/tracker',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.get_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/trackers/{trackerId}',
				'params'           => ['trackerId', ],
				'args'             => args
			})

		end

		def self.get_as_non_registered_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_as_non_registered_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/non-registered/trackers/{trackerId}',
				'params'           => ['trackerId', ],
				'args'             => args
			})

		end

		def self.create(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create',
				'http_method'      => 'POST',
				'path'             => '/v1/trackers',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/trackers',
				'params'           => [],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.create_as_non_registered_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_as_non_registered_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/non-registered/trackers',
				'params'           => [],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.change_owner(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'change_owner',
				'http_method'      => 'PUT',
				'path'             => '/v1/trackers/{trackerId}/customer',
				'params'           => ['trackerId', ],
				'args'             => args
			})

		end

		def self.change_owner_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'change_owner_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/trackers/{trackerId}/customer',
				'params'           => ['trackerId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/trackers/{trackerId}',
				'params'           => ['trackerId', ],
				'args'             => args
			})

		end

		def self.delete_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/trackers/{trackerId}',
				'params'           => ['trackerId', ],
				'args'             => args
			})

		end

		def self.delete_as_non_registered_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_as_non_registered_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/non-registered/trackers/{trackerId}',
				'params'           => ['trackerId', ],
				'args'             => args
			})

		end

	end

end