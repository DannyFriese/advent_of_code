require_relative 'puzzle_input/01_input'

# Task 1
positions = POSITIONS.map(&:to_i)
counter_sum = 0

(1..1999).each do |e|
  if positions[e] > positions[e-1]
    counter_sum += 1
    end
end

puts counter_sum

# Task 2
counter_sum = 0
previous_sum = 0
current_sum = 0

(1..1997).each do |e|
  current_sum = positions[e] + positions[e+1] + positions[e+2]
  if current_sum > previous_sum
    counter_sum += 1
  end
  previous_sum = current_sum
end

puts counter_sum
