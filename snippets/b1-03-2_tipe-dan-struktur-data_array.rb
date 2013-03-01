tinggi_murid = [156, 160, 149]
tinggi_murid << 189 # tambahkan 189 ke akhir Array tinggi_murid
puts tinggi_murid.inspect

nama_singkat = %w{andi budi nani} # Array berisi String
nama_singkat = ["andi", "budi", "nani"] # sama dengan di atas

# Iterasi
nama_singkat.each do |nama|
  puts "Halo #{nama}!"
end; puts
nama_singkat.each { |nama| puts "Halo #{nama}!" }
puts
nama_singkat.each { |nama|
  puts "Halo #{nama}!"
}

puts
puts nama_singkat.map { |nama| "Halo #{nama}" }.inspect

# Iterasi dengan Index

nama_singkat.each_with_index do |nama, index|
  puts "Tinggi #{nama} adalah #{tinggi_murid[index]}"
end; puts

nama_singkat.each_with_index { |nama, index| puts "Tinggi #{nama} adalah #{tinggi_murid[index]}" }
puts
nama_singkat.each_with_index { |nama, index|
  puts "Tinggi #{nama} adalah #{tinggi_murid[index]}"
}