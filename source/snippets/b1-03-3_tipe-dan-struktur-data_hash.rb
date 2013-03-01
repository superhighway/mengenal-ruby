h = { key: "value" }
puts h
puts key: "value"
puts "key" => "value", x: "y"
puts :hihi => 8
puts Hash["a", 100, "b", 200]
puts Hash[ [ ["a", 100], ["b", 200] ] ]
puts Hash["a" => 100, "b" => 200]

hash = { hari_ini: 19, "besok" => 10 }
puts hash.keys.inspect
puts hash.values.inspect
puts hash["kemarin"] # nil kalau diprint jadi string kosong
puts hash[:hari_ini]
puts hash["besok"]
# Iterasi
hash.each_pair do |key, value|
  puts "#{key.to_s} jajan #{value} ribu"
end

puts hash.merge(kemarin: 30)
puts hash[:kemarin]