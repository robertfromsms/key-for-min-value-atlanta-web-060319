def my_sort(array1)
  i = 0
  while i < array1.length
    j = 0
    while j < array1.length
      if array2[i] > array2[j]
        array1[i], array1[j] = array1[j], array1[i]
      end
      j += 1
    end
    i += 1
  end  
end

my_sort([9,8,7,6,5,4,3])