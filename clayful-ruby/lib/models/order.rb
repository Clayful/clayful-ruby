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

		def self.query(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query',
				'http_method'      => 'GET',
				'path'             => '/v1/orders',
				'params'           => [],
				'args'             => args
			})

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

		def self.query_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/orders',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.list_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/orders',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.get_ticket_details(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_ticket_details',
				'http_method'      => 'GET',
				'path'             => '/v1/orders/tickets/{code}/details',
				'params'           => ['code', ],
				'args'             => args
			})

		end

		def self.get_sync_operation_errors(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_sync_operation_errors',
				'http_method'      => 'GET',
				'path'             => '/v1/orders/{orderId}/sync/operations/errors',
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

		def self.recover(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'recover',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/recover',
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
				'path'             => '/v1/orders/{orderId}/cancel',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.reject(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'reject',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/reject',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.undone(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'undone',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/undone',
				'params'           => ['orderId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.done(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'done',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/done',
				'params'           => ['orderId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.verify_ticket(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'verify_ticket',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/tickets/{code}/verify',
				'params'           => ['code', ],
				'args'             => args
			})

		end

		def self.use_ticket(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'use_ticket',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/tickets/{code}/use',
				'params'           => ['code', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.recover_ticket(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'recover_ticket',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/tickets/{code}/recover',
				'params'           => ['code', ],
				'args'             => args
			})

		end

		def self.create_full_payment_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_full_payment_transaction',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/transactions/full',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.create_all_fulfillments(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_all_fulfillments',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/fulfillments/all',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.create_full_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_full_refund',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/full',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.create_partial_payment_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_partial_payment_transaction',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/transactions/partial',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.create_partial_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_partial_refund',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/partial',
				'params'           => ['orderId', ],
				'args'             => args
			})

		end

		def self.reject_refund(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'reject_refund',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/reject',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.sync_payment_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'sync_payment_transaction',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/transactions/{transactionId}/sync',
				'params'           => ['orderId', 'transactionId', ],
				'without_payload'  => true,
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

		def self.recover_download(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'recover_download',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/items/{itemId}/download/recover',
				'params'           => ['orderId', 'itemId', ],
				'args'             => args
			})

		end

		def self.partial_restock(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'partial_restock',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/restock/partial',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.create_full_refund_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_full_refund_transaction',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/transactions/full',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.full_restock(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'full_restock',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/restock/full',
				'params'           => ['orderId', 'refundId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.create_downloadable_url(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_downloadable_url',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/items/{itemId}/download/url',
				'params'           => ['orderId', 'itemId', ],
				'args'             => args
			})

		end

		def self.create_partial_refund_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_partial_refund_transaction',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/transactions/partial',
				'params'           => ['orderId', 'refundId', ],
				'args'             => args
			})

		end

		def self.sync_refund_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'sync_refund_transaction',
				'http_method'      => 'POST',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/transactions/{transactionId}/sync',
				'params'           => ['orderId', 'refundId', 'transactionId', ],
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

		def self.update_payment_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_payment_transaction',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}/transactions/{transactionId}',
				'params'           => ['orderId', 'transactionId', ],
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

		def self.update_refund_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_refund_transaction',
				'http_method'      => 'PUT',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/transactions/{transactionId}',
				'params'           => ['orderId', 'refundId', 'transactionId', ],
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

		def self.delete_payment_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_payment_transaction',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/transactions/{transactionId}',
				'params'           => ['orderId', 'transactionId', ],
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

		def self.delete_sync_operation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_sync_operation',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/sync/operations/{operationId}',
				'params'           => ['orderId', 'operationId', ],
				'args'             => args
			})

		end

		def self.delete_refund_transaction(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_refund_transaction',
				'http_method'      => 'DELETE',
				'path'             => '/v1/orders/{orderId}/refunds/{refundId}/transactions/{transactionId}',
				'params'           => ['orderId', 'refundId', 'transactionId', ],
				'args'             => args
			})

		end

	end

end