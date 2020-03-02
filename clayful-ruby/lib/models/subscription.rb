module Clayful

	class Subscription

		@@name = 'Subscription'
		@@path = 'subscriptions'

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
				'path'             => '/v1/subscriptions',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/subscriptions',
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

		def self.count_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/subscriptions/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/subscriptions/{subscriptionId}',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.list_inventory_operations(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_inventory_operations',
				'http_method'      => 'GET',
				'path'             => '/v1/subscriptions/{subscriptionId}/inventory/operations',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.cancel(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/cancellation',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.authenticate(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'authenticate',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/auth',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.schedule(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'schedule',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/scheduled',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.sync_inventory(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'sync_inventory',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/synced',
				'params'           => ['subscriptionId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.mark_as_done(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_done',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/done',
				'params'           => ['subscriptionId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.schedule_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'schedule_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/subscriptions/{subscriptionId}/scheduled',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.cancel_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/subscriptions/{subscriptionId}/cancellation',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.fulfill_schedule(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'fulfill_schedule',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/schedules/orders',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.increase_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'increase_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/meta/{field}/inc',
				'params'           => ['subscriptionId', 'field', ],
				'args'             => args
			})

		end

		def self.push_to_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'push_to_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/meta/{field}/push',
				'params'           => ['subscriptionId', 'field', ],
				'args'             => args
			})

		end

		def self.pull_from_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'pull_from_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/subscriptions/{subscriptionId}/meta/{field}/pull',
				'params'           => ['subscriptionId', 'field', ],
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/subscriptions/{subscriptionId}',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.update_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/subscriptions/{subscriptionId}',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.update_cancellation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_cancellation',
				'http_method'      => 'PUT',
				'path'             => '/v1/subscriptions/{subscriptionId}/cancellation',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.update_cancellation_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_cancellation_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/subscriptions/{subscriptionId}/cancellation',
				'params'           => ['subscriptionId', ],
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

		def self.mark_as_undone(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_undone',
				'http_method'      => 'DELETE',
				'path'             => '/v1/subscriptions/{subscriptionId}/done',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.delete_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_metafield',
				'http_method'      => 'DELETE',
				'path'             => '/v1/subscriptions/{subscriptionId}/meta/{field}',
				'params'           => ['subscriptionId', 'field', ],
				'args'             => args
			})

		end

		def self.delete_inventory_operation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_inventory_operation',
				'http_method'      => 'DELETE',
				'path'             => '/v1/subscriptions/{subscriptionId}/inventory/operations/{operationId}',
				'params'           => ['subscriptionId', 'operationId', ],
				'args'             => args
			})

		end

	end

end