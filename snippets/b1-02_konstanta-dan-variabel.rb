JEDA_TAHUN = 3 # konstanta
# JEDA_TAHUN = 10 # error karena sudah diassign

$tahun_ini = 2013 # variabel global
puts "Sekarang tahun #{$tahun_ini}."

umur = 20 # variabel lokal
puts "Sekarang umur saya #{umur}. Ngga deng becanda."

class Mobil
  @@sim = "A" # variabel kelas

  def nama
    @nama # variabel object
  end

  def nama=(nama)
    @nama = nama
  end

  def self.sim # class method
    @@sim
  end
end

puts "Mobil biasanya pakai SIM #{Mobil.sim}."
mobilku = Mobil.new
mobilku.nama = "Mobil Balap"
puts "Mobilku #{mobilku.nama}. Jadi aku pake SIM #{Mobil.sim}."