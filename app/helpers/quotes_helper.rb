module QuotesHelper

	def picture_caller(author)
		case author
			when "Abraham Lincoln"
				image_tag('lincoln.jpg', :alt => author.to_s, :size => '100x130', :title => author.to_s)
			when "Terry Bu"
				image_tag('pika.gif', :alt => "Terry", :title => "Terry")
			when "Bruce Lee"
image_tag('brucelee.jpg', :alt => author.to_s, :size => '200x130', :title => author.to_s)
			when "Apple"
				image_tag('apple.png', :alt => author.to_s, :size => '150x130', :title => author.to_s)
			when "Confucius"
				image_tag('confucius.JPG', :alt => author.to_s, :size => '100x75', :title => author.to_s)
			when "Lao Tzu"
				image_tag('laotzu.jpeg', :alt => author.to_s, :size => '150x130', :title => author.to_s)
			when "Mahatma Gandhi"
				image_tag('gandhi.jpg', :alt => author.to_s, :size => '150x130', :title => author.to_s)
			when "John F. Kennedy"
				image_tag('jfk.jpg', :alt => author.to_s, :size => '150x130', :title => author.to_s)
			when "Albert Einstein"
				image_tag('einstein.jpg', :alt => author.to_s, :size => '150x130', :title => author.to_s)
			end
	end

end
