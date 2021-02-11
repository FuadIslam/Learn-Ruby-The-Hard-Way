input_file = ARGV.first

def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0)
end

def print_a_line(f)
  puts "->#{f.gets.chomp}"
end
#Why it works
#It just read each character from the file until it hits a \n (new line),
#then stops and returns that.

current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
puts current_line
print_a_line(current_file)

current_line = current_line + 1
puts current_line
print_a_line(current_file)


current_line = current_line + 1
puts current_line
print_a_line(current_file)
