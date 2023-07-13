def triangle(size)
  spaces = size - 1
  stars = 1

  size.times do |s|
    puts (' ' * spaces ) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

def reversed_triangle(size)
  spaces = size - 1
  stars = 1

  size.times do |s|
    puts ('*' * stars) + (' ' * spaces)
    stars += 1
    spaces -= 1
  end
end

def upside_down_right(size)
  spaces = 0
  stars = size

  size.times do |s|
    puts (' ' * spaces) + ('*' * stars)
    stars -= 1
    spaces += 1
  end
end

def upside_down_left(size)
  spaces = 0
  stars = size

  size.times do |s|
    puts ('*' * stars) + (' ' * spaces)
    stars -= 1
    spaces += 1
  end
end


triangle(6)
reversed_triangle(6)
upside_down_right(6)
upside_down_left(6)