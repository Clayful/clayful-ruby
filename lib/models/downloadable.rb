module Clayful

	class Downloadable

		@@name = 'Downloadable'
		@@path = 'downloadables'

		def self.name
			@@name
		end

		def self.path
			@@path
		end

		def self.count(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'count',
				'http_method'      => 'GET',
				'path'             => '/v1/downloadables/count',
				'params'           => [],
				'args'             => args
			})

		end

		def self.create_download_url(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'create_download_url',
				'http_method'      => 'POST',
				'path'             => '/v1/downloadables/{downloadableId}/url',
				'params'           => ['downloadableId', ],
				'without_payload'  => true,
				'args'             => args
			})

		end

		def self.get(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'get',
				'http_method'      => 'GET',
				'path'             => '/v1/downloadables/{downloadableId}',
				'params'           => ['downloadableId', ],
				'args'             => args
			})

		end

		def self.list(*args)

			Clayful.call_api({
				'model_name'       => @@name,
				'method_name'      => 'list',
				'http_method'      => 'GET',
				'path'             => '/v1/downloadables',
				'params'           => [],
				'args'             => args
			})

		end

	end

end