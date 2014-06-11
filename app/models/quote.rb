class Quote < ActiveRecord::Base
	self.table_name = "quotescopy"
	self.primary_key = "pkey"
	scope :next, lambda {|pkey| where("pkey > ?", pkey).order("pkey ASC") } # this is the default ordering for AR
    scope :previous, lambda {|pkey| where("pkey < ?", pkey).order("pkey DESC") }

    def next
      Quote.next(self.pkey).first
    end

    def previous
      Quote.previous(self.pkey).first
    end

	def text
		read_attribute('quotetext')
	end

end
