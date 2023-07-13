def stringy(integer, default = 1)
  numbers = []

  case default
  when 1
    integer.times do |idx|
      number = idx.even? ? 1 : 0
      numbers << number
    end
  when 0
    integer.times do |idx|
      number = idx.even? ? 0: 1
      numbers << number
    end
  end
  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(1) == '1'
puts stringy(7, 0) == '0101010'
puts stringy(2, 0) == '01'