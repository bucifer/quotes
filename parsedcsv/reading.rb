=begin
File.open(file, 'r') do |f1|
	while line = f1.gets
		puts line
	end
end
=end
file = 'reading.txt'
each_line_array = []
File.readlines(file).each do |line|
	each_line_array << line.strip
end

for index in (0..(each_line_array.size-1))
	if index.even? || index == 0
		x = each_line_array[index]
		x.strip!
		x.slice!(0)
		x.slice!(-1)
	else
		x = each_line_array[index]
		x.slice!(0..1)
	end
end

#adding category 'reading' to array[0], array[3], array[6]
def addCategory(array)
	count = 0
	while count < (array.size-1)
		array.insert(count, "Reading")
		count += 3
	end
end
addCategory(each_line_array)


#switching author name with quote text order
def switchAuthorText(array)
	count = 1
	while count < array.size
		array[count], array[(count+1)] = array[(count+1)], array[count]
		count += 3
	end
end
switchAuthorText(each_line_array)

#see result on cmd prompt
p each_line_array



#outputting it out to csv file
require 'csv'
CSV.open("reading.csv", "w") do |csv|
  count = 0
  while count < each_line_array.size
  csv << [each_line_array[count], each_line_array[(count+1)], each_line_array[(count+2)]]
  count += 3
  end
end

#this slices away the quotation marks and then downcases and capitalizes
#do this for every array item index 0, 2, 4 ... until 42
#a = each_line_array[0]
#p a[1..-2].downcase.capitalize

#do this for every array item index 1, 3, 5, 7 until 43
#this slices away the weird em dash at the beginning + space
#array size is 44 items
#x = each_line_array[43]
#x.slice!(0..1)
#p x

=begin
#create new file and write to it
File.open('test.rb', 'w') do |x|
	#use \n for spacing
	x.puts "Testing bitch\nTerry Bu"
end
=end 