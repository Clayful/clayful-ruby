module Clayful

	class WishList

		@@name = 'WishList'
		@@path = 'wishlists'

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
				'path'             => '/v1/wishlists',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/wishlists',
				'params'           => [],
				'args'             => args
			})

		end

		def self.query_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_as_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/wishlists',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_as_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/wishlists',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/wishlists/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/wishlists/{wishListId}',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.query_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/wishlists',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.list_by_customer(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_by_customer',
				'http_method'      => 'GET',
				'path'             => '/v1/customers/{customerId}/wishlists',
				'params'           => ['customerId', ],
				'args'             => args
			})

		end

		def self.count_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_as_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/wishlists/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get_as_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/wishlists/{wishListId}',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.query_products(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_products',
				'http_method'      => 'GET',
				'path'             => '/v1/wishlists/{wishListId}/products',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.list_products(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_products',
				'http_method'      => 'GET',
				'path'             => '/v1/wishlists/{wishListId}/products',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.query_products_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'query_products_as_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/wishlists/{wishListId}/products',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.list_products_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list_products_as_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/wishlists/{wishListId}/products',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.count_products(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_products',
				'http_method'      => 'GET',
				'path'             => '/v1/wishlists/{wishListId}/products/count',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.count_products_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count_products_as_me',
				'http_method'      => 'GET',
				'path'             => '/v1/me/wishlists/{wishListId}/products/count',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.create(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create',
				'http_method'      => 'POST',
				'path'             => '/v1/wishlists',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/wishlists',
				'params'           => [],
				'args'             => args
			})

		end

		def self.add_item(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'add_item',
				'http_method'      => 'POST',
				'path'             => '/v1/wishlists/{wishListId}/items',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.add_item_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'add_item_as_me',
				'http_method'      => 'POST',
				'path'             => '/v1/me/wishlists/{wishListId}/items',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.increase_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'increase_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/wishlists/{wishListId}/meta/{field}/inc',
				'params'           => ['wishListId', 'field', ],
				'args'             => args
			})

		end

		def self.push_to_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'push_to_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/wishlists/{wishListId}/meta/{field}/push',
				'params'           => ['wishListId', 'field', ],
				'args'             => args
			})

		end

		def self.pull_from_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'pull_from_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/wishlists/{wishListId}/meta/{field}/pull',
				'params'           => ['wishListId', 'field', ],
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/wishlists/{wishListId}',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.update_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_as_me',
				'http_method'      => 'PUT',
				'path'             => '/v1/me/wishlists/{wishListId}',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/wishlists/{wishListId}',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.delete_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_as_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/wishlists/{wishListId}',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.empty(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'empty',
				'http_method'      => 'DELETE',
				'path'             => '/v1/wishlists/{wishListId}/items',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.empty_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'empty_as_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/wishlists/{wishListId}/items',
				'params'           => ['wishListId', ],
				'args'             => args
			})

		end

		def self.delete_item(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_item',
				'http_method'      => 'DELETE',
				'path'             => '/v1/wishlists/{wishListId}/items/{productId}',
				'params'           => ['wishListId', 'productId', ],
				'args'             => args
			})

		end

		def self.delete_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_metafield',
				'http_method'      => 'DELETE',
				'path'             => '/v1/wishlists/{wishListId}/meta/{field}',
				'params'           => ['wishListId', 'field', ],
				'args'             => args
			})

		end

		def self.delete_item_as_me(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_item_as_me',
				'http_method'      => 'DELETE',
				'path'             => '/v1/me/wishlists/{wishListId}/items/{productId}',
				'params'           => ['wishListId', 'productId', ],
				'args'             => args
			})

		end

	end

end