module Clayful

	class Impression

		@@name = 'Impression'
		@@path = ''

		def self.name
			@@name
		end

		def self.path
			@@path
		end

		def self.top_brands(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'top_brands',
				'http_method'      => 'GET',
				'path'             => '/v1/impressions/{scope}/top/brands',
				'params'           => ['scope', ],
				'args'             => args
			})

		end

		def self.top_products(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'top_products',
				'http_method'      => 'GET',
				'path'             => '/v1/impressions/{scope}/top/products',
				'params'           => ['scope', ],
				'args'             => args
			})

		end

		def self.top_collections(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'top_collections',
				'http_method'      => 'GET',
				'path'             => '/v1/impressions/{scope}/top/collections',
				'params'           => ['scope', ],
				'args'             => args
			})

		end

		def self.gather(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'gather',
				'http_method'      => 'POST',
				'path'             => '/v1/impressions/{scope}',
				'params'           => ['scope', ],
				'args'             => args
			})

		end

	end

end