# --- Day 2: Corruption Checksum ---

sum = 0
File.open('input.txt').each do |line|
  array = line.split(' ').map(&:to_i)
  min, max = array.minmax
  puts "#{array}"
  puts "#{min} #{max}"
  sum += max - min
end
puts sum
