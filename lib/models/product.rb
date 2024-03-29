module Clayful

	class Product

		@@name = 'Product'
		@@path = 'products'

		def self.name
			@@name
		end

		def self.path
			@@path
		end

		def self.adjust_variant_quantity(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'adjust_variant_quantity',
				'http_method'      => 'POST',
				'path'             => '/v1/products/{productId}/variants/{variantId}/quantity',
				'params'           => ['productId', 'variantId', ],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/products/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create',
				'http_method'      => 'POST',
				'path'             => '/v1/products',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create_variant(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_variant',
				'http_method'      => 'POST',
				'path'             => '/v1/products/{productId}/variants',
				'params'           => ['productId', ],
				'args'             => args
			})

		end

		def self.create_variation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_variation',
				'http_method'      => 'POST',
				'path'             => '/v1/products/{productId}/options/{optionId}/variations',
				'params'           => ['productId', 'optionId', ],
				'args'             => args
			})

		end

		def self.delete(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/{productId}',
				'params'           => ['productId', ],
				'args'             => args
			})

		end

		def self.delete_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_metafield',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/{productId}/meta/{field}',
				'params'           => ['productId', 'field', ],
				'args'             => args
			})

		end

		def self.delete_variant(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_variant',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/{productId}/variants/{variantId}',
				'params'           => ['productId', 'variantId', ],
				'args'             => args
			})

		end

		def self.delete_variation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'delete_variation',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/{productId}/options/{optionId}/variations/{variationId}',
				'params'           => ['productId', 'optionId', 'variationId', ],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/products/{productId}',
				'params'           => ['productId', ],
				'args'             => args
			})

		end

		def self.increase_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'increase_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/{productId}/meta/{field}/inc',
				'params'           => ['productId', 'field', ],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/products',
				'params'           => [],
				'args'             => args
			})

		end

		def self.mark_as_censored(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_censored',
				'http_method'      => 'POST',
				'path'             => '/v1/products/{productId}/censored',
				'params'           => ['productId', ],
				'args'             => args
			})

		end

		def self.mark_as_uncensored(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'mark_as_uncensored',
				'http_method'      => 'DELETE',
				'path'             => '/v1/products/{productId}/censored',
				'params'           => ['productId', ],
				'args'             => args
			})

		end

		def self.pull_from_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'pull_from_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/{productId}/meta/{field}/pull',
				'params'           => ['productId', 'field', ],
				'args'             => args
			})

		end

		def self.push_to_metafield(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'push_to_metafield',
				'http_method'      => 'POST',
				'path'             => '/v1/products/{productId}/meta/{field}/push',
				'params'           => ['productId', 'field', ],
				'args'             => args
			})

		end

		def self.update(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update',
				'http_method'      => 'PUT',
				'path'             => '/v1/products/{productId}',
				'params'           => ['productId', ],
				'args'             => args
			})

		end

		def self.update_option(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_option',
				'http_method'      => 'PUT',
				'path'             => '/v1/products/{productId}/options/{optionId}',
				'params'           => ['productId', 'optionId', ],
				'args'             => args
			})

		end

		def self.update_variant(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_variant',
				'http_method'      => 'PUT',
				'path'             => '/v1/products/{productId}/variants/{variantId}',
				'params'           => ['productId', 'variantId', ],
				'args'             => args
			})

		end

		def self.update_variation(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'update_variation',
				'http_method'      => 'PUT',
				'path'             => '/v1/products/{productId}/options/{optionId}/variations/{variationId}',
				'params'           => ['productId', 'optionId', 'variationId', ],
				'args'             => args
			})

		end

	end

end