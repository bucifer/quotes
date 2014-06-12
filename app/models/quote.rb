class Quote < ActiveRecord::Base
	self.table_name = "quotescopy"
	self.primary_key = "pkey"
	
  validates :category, presence: true, length: {minimum: 3, maximum: 25}, 
  format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :author, presence: true, length: {minimum: 3, maximum: 25}, 
  format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :quotetext, presence: true, length: {minimum: 5}

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
