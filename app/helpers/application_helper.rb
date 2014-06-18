module ApplicationHelper
	
	def mix_dcase_upcase_cap(arrayX)
		result = []
		arrayX.each do |x|
			result << x.downcase
			result << x.upcase
			result << x.capitalize
		end
		return result
	end

	def display_error_messages(object)
		render(partial: 'error_messages', locals: {:object => object})	
	end

end