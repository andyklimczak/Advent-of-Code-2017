# --- Day 2: Corruption Checksum ---

sum = 0
File.open('input.txt').each do |line|
  array = line.split(' ').map(&:to_i)
  puts "#{array}"
  len = array.length - 1
  for i in 0..len do
    curr = array[i]
    for j in 0..len do
      other = array[j]
      if curr % other == 0 && i != j
        puts "#{i} #{curr} #{j} #{other}"
        sum += curr / other
        break
      end
    end
  end
end
puts sum
