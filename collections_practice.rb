
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort! do |x,y|
    x.length <=> y.length
  end
  array
end #=> array with the strings ordered in ascending order by length

def swap_elements(array)
  array.insert(3, array[1]).delete_at(1)
  array
end

#def swap_elements_from_to(array, index, destination_index)
#  array.insert(destination_index+1, array[index]).delete_at(index)
#  array
#end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_array = []
  array.each do |string|
    new_array << string.gsub(string[2],"$")
  end
new_array
end

def find_a(array)
  new_array =[]
  array.each do |string|
    if string.start_with?("a")
      new_array << string
    end
  end
  new_array
end

def sum_array(array)
  array.inject {|memo,i| memo += i}
end

def add_s(array)
  new_array = []
  new_string = ""
  array.each do |string|
    if string != array[1]
      new_string = string + "s"
      new_array << new_string
    else
      new_array << string
    end
  end
  new_array
end
