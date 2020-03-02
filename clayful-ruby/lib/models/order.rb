module Clayful

	class Order

		@@name = 'Order'
		@@path = 'orders'

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
				'path'             => '/v1/orders',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/orders',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/orders/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/orders/{orderId}',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.count_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/orders/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/orders/{orderId}',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.list_by_subscription(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_subscription',
				'http_method'      => 'GET',
				'path'             => '/v1/subscriptions/{subscriptionId}/orders',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.list_by_subscription_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_subscription_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/subscriptions/{subscriptionId}/orders',
				'params'           => ['subscriptionId', ],
				'args'             => args
			})

		end

		def self.list_inventory_operations(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_inventory_operations',
				'http_method'      => 'GET',
				'path'             => '/v1/orders/{orderId}/inventory/operations',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.mark_as_received(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_received',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/received',
				'params'           => ['orderId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.sync_inventory(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'sync_inventory',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/synced',
				'params'           => ['orderId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.cancel(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/cancellation',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.create_fulfillment(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_fulfillment',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/fulfillments',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.authenticate(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'authenticate',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/auth',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.request_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'request_refund',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.mark_as_done(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_done',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/done',
				'params'           => ['orderId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.request_refund_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'request_refund_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/orders/{orderId}/refunds',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.mark_as_received_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_received_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/orders/{orderId}/received',
				'params'           => ['orderId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.cancel_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/orders/{orderId}/cancellation',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.check_ticket(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'check_ticket',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/tickets/{code}/validity',
				'params'           => ['code', ],
				'args'             => args
			})

		end

		def self.use_ticket(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'use_ticket',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/tickets/{code}/used',
				'params'           => ['code', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.accept_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'accept_refund',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/accepted',
				'params'           => ['orderId', 'refundId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.push_to_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'push_to_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/meta/{field}/push',
				'params'           => ['orderId', 'field', ],
				'args'             => args
			})

		end

		def self.cancel_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_refund',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/cancellation',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.pull_from_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'pull_from_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/meta/{field}/pull',
				'params'           => ['orderId', 'field', ],
				'args'             => args
			})

		end

		def self.increase_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'increase_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/meta/{field}/inc',
				'params'           => ['orderId', 'field', ],
				'args'             => args
			})

		end

		def self.restock_refund_items(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'restock_refund_items',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/restock',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.register_payment_method(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'register_payment_method',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/transactions/payments/methods',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.cancel_refund_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'cancel_refund_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/orders/{orderId}/refunds/{refundId}/cancellation',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.create_download_url(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_download_url',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/items/{itemId}/download/url',
				'params'           => ['orderId', 'itemId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.restock_all_refund_items(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'restock_all_refund_items',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/restock/all',
				'params'           => ['orderId', 'refundId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.create_download_url_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_download_url_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/orders/{orderId}/items/{itemId}/download/url',
				'params'           => ['orderId', 'itemId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.update_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/orders/{orderId}',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.update_transactions(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_transactions',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}/transactions',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.update_cancellation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_cancellation',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}/cancellation',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.update_transactions_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_transactions_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/orders/{orderId}/transactions',
				'params'           => ['orderId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.update_cancellation_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_cancellation_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/orders/{orderId}/cancellation',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.update_fulfillment(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_fulfillment',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}/fulfillments/{fulfillmentId}',
				'params'           => ['orderId', 'fulfillmentId', ],
				'args'             => args
			})

		end

		def self.update_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_refund',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.update_item(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_item',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}/items/{itemId}',
				'params'           => ['orderId', 'itemId', ],
				'args'             => args
			})

		end

		def self.update_refund_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_refund_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/orders/{orderId}/refunds/{refundId}',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.update_refund_cancellation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_refund_cancellation',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/cancellation',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.update_refund_cancellation_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_refund_cancellation_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/orders/{orderId}/refunds/{refundId}/cancellation',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.mark_as_undone(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_undone',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/done',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.mark_as_not_received(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_not_received',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/received',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.mark_as_not_received_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_not_received_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/orders/{orderId}/received',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.delete_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_metafield',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/meta/{field}',
				'params'           => ['orderId', 'field', ],
				'args'             => args
			})

		end

		def self.delete_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_refund',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.delete_fulfillment(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_fulfillment',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/fulfillments/{fulfillmentId}',
				'params'           => ['orderId', 'fulfillmentId', ],
				'args'             => args
			})

		end

		def self.delete_inventory_operation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_inventory_operation',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/inventory/operations/{operationId}',
				'params'           => ['orderId', 'operationId', ],
				'args'             => args
			})

		end

		def self.unaccept_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'unaccept_refund',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/accepted',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.unregister_payment_method(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'unregister_payment_method',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/transactions/payments/methods/{paymentMethodId}',
				'params'           => ['orderId', 'paymentMethodId', ],
				'args'             => args
			})

		end

	end

end