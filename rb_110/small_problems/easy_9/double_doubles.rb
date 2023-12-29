def twice(int)
	int_string = int.to_s
	center_index = int_string.size / 2

  if center_index == 1/2
    left_side = ''
  else
    left_side = int_string[0..center_index-1]
  end

	right_side = int_string[center_index..-1]

	if left_side == right_side
		int_string.to_i
	else
		(int_string.to_i) * 2
	end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
