def stringy(integer, default = 1)
  case default
  when 1
    if integer.even?
      '10' * (integer / 2)
    else
      '10' * (integer / 2) + '1'
    end
  when 0
    if integer.even?
      '01' * (integer / 2)
    else
      '01' * (integer / 2) + '0'
    end
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(1) == '1'
puts stringy(7, 0) == '0101010'
puts stringy(2, 0) == '01'
puts stringy(1, 0) == '0'
