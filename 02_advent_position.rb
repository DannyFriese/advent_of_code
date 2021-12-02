require_relative 'puzzle_input/02_input'

positions = POSITIONS.each_with_index.map { |e,i| i.even? ? e : e.to_i }

# Task 1
horizontal_position = 0
vertical_position = 0

positions.each_with_index do |position,i|
  horizontal_position += positions[i+1] if position == "forward"
  vertical_position -= positions[i+1] if position == "up"
  vertical_position += positions[i+1] if position == "down"
end

puts horizontal_position * vertical_position

# Task 2
horizontal_position = 0
vertical_position = 0
aim = 0

positions.each_with_index do |position,i|
  aim -= positions[i+1] if position == "up"
  aim += positions[i+1] if position == "down"
  horizontal_position += positions[i+1] if position == "forward"
  vertical_position += (aim * positions[i+1]) if position == "forward"
end

puts horizontal_position * vertical_position