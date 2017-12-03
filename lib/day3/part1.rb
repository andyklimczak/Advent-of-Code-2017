# --- Day 3: Spiral Memory ---
# N is max number(?)
# length of side = sqrt(N) (16 = 4, 25 = 5)
# distance from N -> 1 = sqrt(N) - 1

n = 361527
puts "n: #{n}"
N = (Math.sqrt(n)).ceil ** 2
puts "N: #{N}"

corner0 = N
corner1 = N - ((Math.sqrt(N) - 1) * 1)
corner2 = N - ((Math.sqrt(N) - 1) * 2)
corner3 = N - ((Math.sqrt(N) - 1) * 3)
corner4 = N - ((Math.sqrt(N) - 1) * 4)

corners = [corner0, corner1, corner2, corner3, corner4]
closest_corner = corners.sort.min_by { |e| (e - n).abs }.to_i

puts "corners #{corners}"
puts "closest corner: #{closest_corner}"

cornerD = Math.sqrt(N) - 1
puts "corner distance: #{cornerD}"
cornerD = cornerD + 1 if corner1 >= n && n >= corner2
puts "corner distance: #{cornerD}"

nD = (cornerD - (n - closest_corner).abs).to_i
puts "n distance: #{nD}"
