# Your Code Here
def map(source_array)
  new_array = []
  source_array.each{|num| new_array << yield(num)}
  new_array
end

def reduce(source_array, starting_point = nil)
  source_array.each{|element| total = yield(starting_point, element)}
  starting_point
end