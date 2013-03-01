tinggi_badan = [170, 150, 160]

puts "for"
for tinggi in tinggi_badan
  puts "Tinggi badanmu #{tinggi} cm."
end

puts; puts "each"
# yang di atas sama dengan .each pada Array dan Set
tinggi_badan.each { |tinggi| puts "Tinggi badanmu #{tinggi} cm." }

# while: jalankan hingga kondisi tidak terpenuhi
puts; puts "while"
n = 0
while n < tinggi_badan.size
  puts tinggi_badan[n]
  n += 1
end

# until: jalankan hingga kondisi terpenuhi
puts; puts "until"
n = 0
until n >= tinggi_badan.size
  puts tinggi_badan[n]
  n += 1
end

puts; puts "begin-end-while"
n = -1
begin
  n += 1
  puts tinggi_badan[n]
end while n < tinggi_badan.size

puts; puts "begin-end-until"
n = -1
begin
  n += 1
  puts tinggi_badan[n]
end until n >= tinggi_badan.size

puts; puts "loop"
n = 0
loop do 
  puts tinggi_badan[n]
  n += 1
  break if n >= tinggi_badan.size
end

# jalankan x kali
puts; puts "10 kali tepuk tangan"
people = []
10.times { print "plok " }