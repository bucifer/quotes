class Quote < ActiveRecord::Base
	self.table_name = "quotescopy"
	self.primary_key = "pkey"

  #validate is older version of validation
  #'validates' is "sexy validation version" which shortens code 
  validates :category, 
    presence: true, 
    length: {minimum: 3, maximum: 25}, 
    format: { 
      with: /\A[a-z A-Z &.]+\z/, 
      message: "only allows letters and &." }
  validates :author, 
    presence: true, 
    format: { 
      with: /\A[a-z A-Z &.]+\z/, 
      message: "only allows letters and &." }
  validates :quotetext, 
    presence: true

  #you can't seem to be able to declare methods in a normal way in this model file.
  #you need to make it into a CLASS method like below to be able to use later in the file
  #weird
  def self.mix(arrayX)
      result = []
      arrayX.each do |x|
      result << x.downcase
      result << x.upcase
      result << x.capitalize
    end
    return result
  end

  FORBIDDEN_CATEGORY = mix(['Fuck','Shit', 'Pussy', "Dick", "Penis", 'Cum'])
  validate :category_is_allowed

  def category_is_allowed
    if FORBIDDEN_CATEGORY.include? (category)
          errors.add(:category, "is a restricted bad word category")
    end
  end
  
  scope :sorted, lambda {order("pkey ASC")}
  scope :next, lambda {|pkey| where("pkey > ?", pkey).order("pkey ASC") } # this is the default ordering for AR
  scope :previous, lambda {|pkey| where("pkey < ?", pkey).order("pkey DESC") }

    def next
      Quote.next(self.pkey).first
    end

    def previous
      Quote.previous(self.pkey).first
    end

    def last
      Quote.last
    end

    def first
      Quote.first
    end

	  def text
	 	  read_attribute('quotetext')
	 end

end