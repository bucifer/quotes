module ApplicationHelper
	
	def display_error_messages(object)
		render(partial: 'error_messages', locals: {:object => object})	
	end

end