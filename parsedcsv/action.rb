file = 'action.txt'
each_line_array = []
File.readlines(file).each do |line|
	each_line_array << line.strip
end

#switching author name with quote text order
def switchAuthorText(array)
	count = 0
	while count < array.size
		array[count], array[(count+1)] = array[(count+1)], array[count]
		count += 2
	end
end
switchAuthorText(each_line_array)


#adding category 'Action'
def addCategory(array)
	count = 0
	while count < (array.size-1)
		array.insert(count, "Action")
		count += 3
	end
end
addCategory(each_line_array)

#see result on cmd prompt
p each_line_array
puts each_line_array


#outputting it out to csv file
require 'csv'
CSV.open("action.csv", "w") do |csv|
  count = 0
  while count < each_line_array.size
  csv << [each_line_array[count], each_line_array[(count+1)], each_line_array[(count+2)]]
  count += 3
  end
end

