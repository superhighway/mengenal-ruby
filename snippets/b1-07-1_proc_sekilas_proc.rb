# Sudah pernah lihat?
tinggi_badan = [170, 160, 150]
tinggi_badan.each { |tinggi| puts "Tinggi badanku #{tinggi}cm." }

puts; puts "--- block"
blok = proc { |tinggi| puts "Tinggi badanku #{tinggi}cm." }
# blok = Proc.new { |tinggi| puts "Tinggi badanku #{tinggi}cm." } # sama dengan di atas
puts "block merupakan sebuah instance dari #{blok.class}."
puts "Apakah block merupakan lambda? #{blok.lambda? ? "Ya" : "Tidak"}"
tinggi_badan.each &blok

puts; puts "--- lambda"
ld = lambda { |tinggi| puts "Tinggi badanku #{tinggi}cm." }
# ld = ->(tinggi) { puts "Tinggi badanku #{tinggi}cm." } # sama dengan di atas
puts "lambda merupakan sebuah instance dari #{ld.class}."
puts ld.lambda?
tinggi_badan.each &ld
puts

# Membuat method dengan argumen sebuah Proc
def kelas_blok(&block)
  puts block.class
  puts block.lambda?
end

puts kelas_blok { |tinggi| puts "Tinggi badanku #{tinggi}cm." }
puts kelas_blok &(lambda { |tinggi| puts "Tinggi badanku #{tinggi}cm." })
puts kelas_blok &->(tinggi) { puts "Tinggi badanku #{tinggi}cm." }