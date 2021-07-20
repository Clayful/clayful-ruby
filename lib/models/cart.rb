module Clayful

	class Cart

		@@name = 'Cart'
		@@path = ''

		def self.name
			@@name
		end

		def self.path
			@@path
		end

		def self.add_item(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'add_item',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/cart/items',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.add_item_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'add_item_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/cart/items',
				'params'           => [],
				'args'             => args
			})

		end

		def self.checkout(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'checkout',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/cart/checkout/{type}',
				'params'           => ['customerId', 'type', ],
				'args'             => args
			})

		end

		def self.checkout_as_non_registered(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'checkout_as_non_registered',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/non-registered/cart/checkout/{type}',
				'params'           => ['type', ],
				'args'             => args
			})

		end

		def self.checkout_as_non_registered_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'checkout_as_non_registered_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/non-registered/cart/checkout/{type}',
				'params'           => ['type', ],
				'args'             => args
			})

		end

		def self.checkout_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'checkout_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/cart/checkout/{type}',
				'params'           => ['type', ],
				'args'             => args
			})

		end

		def self.count_items(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_items',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/cart/items/count',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.count_items_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_items_for_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/cart/items/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.delete_item(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_item',
				'http_method'      => 'DELETE',
				'path'             => '/v1/customers/{customerId}/cart/items/{itemId}',
				'params'           => ['customerId', 'itemId', ],
				'args'             => args
			})

		end

		def self.delete_item_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_item_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/cart/items/{itemId}',
				'params'           => ['itemId', ],
				'args'             => args
			})

		end

		def self.empty(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'empty',
				'http_method'      => 'DELETE',
				'path'             => '/v1/customers/{customerId}/cart/items',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.empty_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'empty_for_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/cart/items',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/{customerId}/cart',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.get_as_non_registered(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_as_non_registered',
				'http_method'      => 'POST',
				'path'             => '/v1/customers/non-registered/cart',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get_as_non_registered_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_as_non_registered_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/non-registered/cart',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_for_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/cart',
				'params'           => [],
				'args'             => args
			})

		end

		def self.update_item(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_item',
				'http_method'      => 'PUT',
				'path'             => '/v1/customers/{customerId}/cart/items/{itemId}',
				'params'           => ['customerId', 'itemId', ],
				'args'             => args
			})

		end

		def self.update_item_for_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_item_for_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/cart/items/{itemId}',
				'params'           => ['itemId', ],
				'args'             => args
			})

		end

	end

end