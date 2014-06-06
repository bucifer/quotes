file = 'test.txt'
each_line_array = []
File.readlines(file).each do |line|
	each_line_array << line.strip
end
finalResult = []

#switching author name with quote text order(but considering first index as Category Name))
def switchAuthorText(array)
	count = 1
	while count < array.size
		array[count], array[(count+1)] = array[(count+1)], array[count]
		count += 2
	end
end

#this function replicates category name before every author name for CSV format
def addCategory(array)
	categoryName = array[0]
	count = 3
	while count < (array.size-1)
		array.insert(count, categoryName)
		count += 3
	end
end


count = 0
@nextStartingPoint = 0

while count < 10
	if count == 0 
		puts "count = 0 "
		dividerIndex = each_line_array.index("----")
		#first-time around, new array equals to beginning of file to divider
		#after first-time around, new array equals to 1 more index after last divider
		new_array = each_line_array[0, dividerIndex]
		switchAuthorText(new_array)
		addCategory(new_array)
		new_array.each do |x|
			finalResult << x
		end
		@nextStartingPoint = dividerIndex
		each_line_array.delete_at(dividerIndex)
		count += 1
		p new_array
	else
		puts "count = " + count.to_s
		dividerIndex = each_line_array.index("----")
		puts "***before anything happens @nextStartingPoint: " + @nextStartingPoint.to_s
		puts "divider index " + dividerIndex.to_s
		#first-time around, new array equals to beginning of file to divider
		#after first-time around, new array equals to 1 more index after last divider
		new_array = each_line_array[@nextStartingPoint, (dividerIndex-@nextStartingPoint)]
		puts "array size :" + new_array.size.to_s
		p new_array
		switchAuthorText(new_array)
		addCategory(new_array)
		new_array.each do |x|
			finalResult << x
		end
		@nextStartingPoint = dividerIndex
		puts "***keeping track @nextStartingPoint " + @nextStartingPoint.to_s
		each_line_array.delete_at(dividerIndex)
		count += 1
		if !each_line_array.include? ("----")
			break
		end
	end
end

#see result on cmd prompt
puts finalResult

#Thinking Process
#1)Create a subarray or a new array of every item between ---- and ----
#2)First word becomes category name
#3)Switch AUthor/Text Order
#4)Loop this for every divider
#5)The end result gets written out to the CSV file


require 'csv'
CSV.open("test.csv", "w") do |csv|
  count = 0
  while count < finalResult.size
  csv << [finalResult[count], finalResult[(count+1)], finalResult[(count+2)]]
  count += 3
  end
end