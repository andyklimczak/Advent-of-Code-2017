# --- Day 1: Inverse Captcha ---
input = File.read('input.txt').to_s

sum = 0
len = input.length - 1
half = input.length / 2
for i in 0..len do
  current = input[i % len].to_i
  nex = input[(i + half) % len].to_i
  puts "inspecting #{current} at #{i % len} and #{nex} at #{(i + 1) % len}"
  if current == nex
    puts "adding #{current} and #{nex}"
    sum += current
  end
end
puts sum
