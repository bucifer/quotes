class Quote < ActiveRecord::Base
	self.table_name = "quotescopy"
	self.primary_key = "pkey"

	def text
		read_attribute('quotetext')
	end

end
