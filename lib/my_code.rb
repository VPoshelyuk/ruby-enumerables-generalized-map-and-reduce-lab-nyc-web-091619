# Your Code Here
def map(source_array)
  new_array = []
  source_array.each{|num| new_array << yield(num)}
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    answer = starting_point
  else
    answer = source_array[0]
  end
  source_array.each{|element| answer = yield(answer, element)}
  answer
end