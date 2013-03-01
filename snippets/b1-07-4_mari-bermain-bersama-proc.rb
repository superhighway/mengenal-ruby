angka = [1, 2, 3, 4]
angka.collect! { |n| n ** 2 }
puts angka.inspect; puts

puts "Memanggil Proc dengan yield"
class Array # Patch Array
  def comot!
    self.each_with_index do |n, i|
      self[i] = yield(n)
    end
  end
end

angka.comot! { |n| n ** 2 }
puts angka.inspect; puts

puts "Memanggil Proc dengan .call"
class Array
  def comot!(&code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

angka.comot! &->(n) { n ** 2 }
puts angka.inspect; puts

puts "Membuat method dengan callback"
def jual_baju(callback)
  callback[:mulai].call
  puts "Jualan Baju..."
  callback[:selesai].call
end

jual_baju(mulai: lambda { puts "Buka Toko Baju" },
          selesai: lambda { puts "Tutup Toko Baju" })