# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  end
  value_array = []
  name_array = []
  name_hash.each {|name, value|
    value_array.push(value)
    name_array.push(name)
  }

  def my_sort_mirroring(array1, array2)
    if array1.length != array2.length
      puts "arrays have to be the same size"
      return "badbab"
    end
    loop {
      swapped = false
      (array2.length - 1).times { |index|
        if array2[index] > array2[index+1]
          array2[index], array2[index+1] = array2[index+1], array2[index]
          array1[index], array1[index+1] = array1[index+1], array1[index]
          swapped = true
        end
      }
      break if not swapped
    }
    return array1
  end
  if my_sort_mirroring(name_array, value_array) == "badbab"
    puts "something wrong happened"
    return
  else
    return my_sort_mirroring(name_array, value_array)[0]
  end
end
