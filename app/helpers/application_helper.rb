module ApplicationHelper
	
	def error_messages
		render(partial: error_messages, locals: {:object => object})	
	end

end