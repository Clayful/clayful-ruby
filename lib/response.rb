module Clayful

	class Response

		attr_reader :status
		attr_reader :data
		attr_reader :headers

		def initialize(status = nil, data = nil, headers = nil)

			@status = status
			@data = data
			@headers = headers

		end

	end

end