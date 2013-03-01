# if dan else

puts "hore pake if" if true
puts "hore pake unless" unless false

# Dalam conditional, nil diperlakukan seperti false, dan bukan nil diperlakukan seperti true.
puts "hore kebalik pake if" if nil
puts "hore kebalik pake unless" unless 7

if true
  puts "suka kucing" # Ini diprint
else
  puts "suka harimau"
end

if false
  puts "suka anjing"
else
  puts "suka kucing" # Ini diprint
end

# Yang di atas bisa disingkat menggunakan ternary operation
true ? puts("hore") : puts("yah kok gitu")  # "hore"

# Bandingkan yang di atas dengan unless dan else
unless true # unless adalah if not
  puts "suka laba-laba"
else
  puts "suka kucing" # Ini diprint
end