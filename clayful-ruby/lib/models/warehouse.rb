module Clayful

	class Warehouse

		@@name = 'Warehouse'
		@@path = 'warehouses'

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
				'path'             => '/v1/warehouses',
				'params'           => [],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/warehouses',
				'params'           => [],
				'args'             => args
			})

		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/warehouses/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/warehouses/{warehouseId}',
				'params'           => ['warehouseId', ],
				'args'             => args
			})

		end

	end

end