def chop(num, num_array)
	half = num_array.length/2
	index_val = -1
  
  if num_array.length == 0
  	return index_val
  elsif num_array.length == 1
    if num_array[0] == num
    	return 0
    end
    return index_val
  end

	if num > num_array[half]
		index_val = chop num, num_array[half, num_array.length]
		return -1 if index_val == -1
		return index_val + half
	elsif num < num_array[half]
		index_val = chop num, num_array[0, half]
		return -1 if index_val == -1
		return index_val
	elsif num == num_array[half]
		return half
	end
	
end
