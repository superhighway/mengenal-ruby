range = (1..3)  # Termasuk elemen terakhir
puts range.to_a.inspect
puts (1...3).to_a.inspect # Tidak termasuk elemen terakhir
puts (0..-1).to_a.inspect # -1 adalah element ke n-1
puts (-1..-5).to_a.inspect
puts (-5..-1).to_a.inspect
puts ('a'..'e').to_a.inspect
puts ('a'...'e').to_a.inspect

puts
puts "Berat Badanku..."
berat_badanku_tiap_hari = [50, 51, 50, 49, 52]
puts berat_badanku_tiap_hari[2..3].inspect
puts berat_badanku_tiap_hari[0..-1].inspect
puts berat_badanku_tiap_hari[0...-1].inspect
puts berat_badanku_tiap_hari[-5...-1].inspect
puts berat_badanku_tiap_hari[-1...-5].inspect

puts
nilai = 10
case nilai
when (9..10)
  puts "Nilaimu A"
when (8...9)
  puts "Nilaimu B"
when (7...8)
  puts "Nilaimu C"
else
  puts "Nilaimu D"
end
