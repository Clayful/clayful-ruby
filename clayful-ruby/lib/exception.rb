module Clayful

	class Exception < StandardError

		attr_reader :is_clayful
		attr_reader :model
		attr_reader :method
		attr_reader :status
		attr_reader :headers
		attr_reader :code
		attr_reader :message
		attr_reader :validation

		def initialize(
			model = nil,
			method = nil,
			status = nil,
			headers = nil,
			code = nil,
			message = '',
			validation = nil)

			@is_clayful = true
			@model = model
			@method = method
			@status = status
			@headers = headers
			@code = code
			@message = message
			@validation = validation

			super(message)

		end

	end

end