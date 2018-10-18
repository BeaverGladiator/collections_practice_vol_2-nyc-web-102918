require "pry"
# your code goes here
def begins_with_r(array)
  test_array = array.select do |word|
    word.start_with?("r")
  end
  
  if test_array.count == array.count
    return true
  else 
    return false
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    string_word = word.to_s
    string_word.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |object|
    object.is_a?(String) != true
  end
end

def count_elements(array)
  new_array = []
  counts = Hash.new 0
  array.each do |object|
    object.each do |key, value|
      counts[value] += 1
    end
  end
  counts.each do |name, count|
    new_array << {name: name, count: count}
  end
  new_array
end

# def merge_data(keys, data)
#   new_hash = {}
  
  
#   data.each do |data_hash|
#     data_hash.each do |key, value|
#       value.each do |attribute, info|
#         new_hash[attribute] = info
#       end 
#     end 
#   end 
  
# end

def merge_data(keys, data)
  keys.each do |object|
    match_name = object[:first_name]
    puts object
    otherObject = data[0][match_name]
    
    otherObject.each do |attribute, value|
      object[attribute] = value
    end
  end
end

def find_cool(array)
  cool_members = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      cool_members << hash
    end
  end 
  
  cool_members
end


def organize_schools(schools)
  school_list = {}
  
  schools.each do |name, data|
    school_list[data[:location]] = [] 
  end
  
  schools.each do |name, data|
    school_list[data[:location]] << name
  end
  
  school_list.sort.to_h

end

