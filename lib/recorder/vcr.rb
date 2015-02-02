class Vcr
	def initialize(object)
		@object = object
		@methods_to_be_called = []
		@method_results = []
	end
	
	def method_missing(method_name)
		@methods_to_be_called.push(method_name)
	end

	def playback!
		@methods_to_be_called.each do |method_name|
			@method_results.push(@object.send(method_name))
		end
		return @method_results
	end
	
end