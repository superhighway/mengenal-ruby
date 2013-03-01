puts 3+8
puts 8*9.1
puts 8/4+10
puts 2**3
puts 3 | 6 # 11 (basis 2) atau 100 (basis 2)
puts 3 ^ 2 # 11 (basis 2) XOR 10 (basis 2)
puts 7 & 2
puts 10 % 5 # habis dibagi 5
puts 10 % 6 # ada sisa

puts
x = 9
puts x < 1 || x >= 10
puts x == '9' or x == 9 # prioritas or lebih rendah daripada ||
puts "#{x == '9' or x == 9}"
puts x.is_a?(Integer) && x < 29
puts x.is_a?(Integer) and x < 29

puts ([1,2,3] - [1,3]).inspect
puts ([1,3,4] + [9,8]).inspect
puts ([1,2,3] * 5).inspect

puts; puts "Singkat assign variabel dan operasi aritmatika"
a = 10
a /= 5   # a = a / 5
puts a
a += 19  # a = a + 19
puts a
a -= 18  # a = a - 18
puts a
a *= 8   # a = a * 8
puts a
a %= 2   # a = a % 2
puts a
a **= 3  # a = a ** 3
puts a

puts; puts "Assign variabel secara paralel"
a, b, c = 1, 's', 9
puts "a=#{a} b=#{b} c=#{c}"
a, b = b, c
puts "a=#{a} b=#{b} c=#{c}"