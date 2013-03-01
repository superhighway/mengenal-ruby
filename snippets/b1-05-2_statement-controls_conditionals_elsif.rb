# elsif
nilai = 10
if nilai >= 9
  puts "Nilaimu A"
elsif nilai >= 8 # elsif berarti else if
  puts "Nilaimu B"
elsif nilai >= 7
  puts "Nilaimu C"
else
  puts "Nilaimu D"
end

mood = :pengen_gerak
if mood == :pengen_belanja
  puts "Cari baju ah"
elsif mood == :pengen_gerak
  puts "Lari marathon biar seger"
elsif mood == :pengen_tidur
  puts "Hibernasi seharian di rumah"
else
  puts "Main sama kucing aja deh"
end
