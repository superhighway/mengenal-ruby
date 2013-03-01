puts "Halo Ruby!"

# Ini komentar

puts 3+6.0 # 9.0

=begin
  Ini komentar untuk banyak baris
=end

total_partisipasi = 30
puts total_partisipasi
puts "Total orang yang hadir adalah #{total_partisipasi}"

def print_halo # ini method tanpa argumen
  puts "halo"
end

print_halo # jalankan method print_halo

def kali_dua(angka) # ini method dengan argumen
  puts "#{angka+angka}"
end

kali_dua(5)
kali_dua 5 # boleh tidak pakai kurung

puts <<-EOL
Bisa print
banyak baris
lho!
EOL