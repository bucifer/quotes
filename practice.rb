#array testing
array = ["james","gay","sean","justin","chung","terry"]
newArray = array[1,3]
p array[1..3]
p newArray


#instance variables that an be shared aross functions
@share = 0

def hi
@share = 5
end

hi

p @share

=begin
s = " \"this is a test\" "
p s
p s.gsub(/"/, '')
=end