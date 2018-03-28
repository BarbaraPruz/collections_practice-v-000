def sort_array_asc (input_array)
  input_array.sort
end

def sort_array_desc (input_array)
  input_array.sort do | a, b |
    (a <=> b) * -1
  end
end

def sort_array_char_count (string_array)
  string_array.sort do | a, b |
    a.length <=> b.length
  end
end

def swap_elements (array)
  tmp = array[1]
  array[1]=array[2]
  array[2]=tmp
  array
end

def swap_elements_from_to (array, index, destination)
  array[index-1], array[destination-1] = array[destination-1], array[index-1]
  array
#  index -= 1
#  destination -= 1
#  tmp = array[index]
#  array[index]=array[destination]
#  array[destination]=tmp
#  array
end

def reverse_array (array)
  array.reverse
end

def kesha_maker (string_array)
  string_array.each do |word|
    word[2] = "$"
  end
end

def find_a (array)
  array.select { |string| string.start_with?('a') }
end

def sum_array (number_array)
  number_array.reduce (:+)
end

def add_s (string_array)
  string_array.collect.with_index { | word, index | index == 1 ? word : word.concat("s")}
end
