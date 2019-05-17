def thing(array)
  i = 0
  while i < array.length
    yield(array[i], i)
    i = i + 1
  end
end

thing([6,7,8,9]) {|a,b|
  puts a
  puts b
}
