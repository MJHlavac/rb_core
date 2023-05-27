# For this practice problem, write a one-line program that creates the following
# output 10 times, with the subsequent line indented 1 space to the right:
# The Flintstones ROCK!
#  The Flintstones ROCK!
#.  The Flintstones ROCK!

10.times { |number| puts (" " * number) + "The Flintstones ROCK!"}