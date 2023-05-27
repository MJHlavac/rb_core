# Programmatically determine if 42 lies between 10 and 100.

def between?(num)
  (10..100).cover?(num) #cover returns true if obj is between range
end

p between?(42)
p between?(101)