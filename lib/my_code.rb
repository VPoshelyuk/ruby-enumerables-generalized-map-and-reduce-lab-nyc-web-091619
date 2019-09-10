# Your Code Here
def map(source_array)
  new_array = []
  source_array.each{|num| new_array << yield(num)}
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    total = starting_point
  else
    total = 0
  end
  source_array.each{|element| answer = yield(total, element)}
  total
end