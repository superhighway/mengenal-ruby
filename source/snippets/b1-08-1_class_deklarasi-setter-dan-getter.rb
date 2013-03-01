class Baju
  BAHAN_DEFAULT = "Bulu" # konstanta kelas

  attr_accessor :merek # buat setter dan getter untuk instance variable @merek
  attr_reader :tahun_desain # buat getter untuk instance variable @tahun_desain
  attr_writer :ada_stock # buat setter untuk instance variable @ada_stock

  def initialize(merek=nil) # method spesial yang dipanggil pada saat class baju diinisialisasi
    @merek = merek
    puts "merek: #{merek}"
  end

  def ada_stock? # tanda tanya biasanya untuk method yang return Boolean
    @ada_stock
  end

  # membuat getter dan setter sendiri
  def desainer # getter
    @desainer ? @desainer : "Belum Tahu"
  end

  def desainer=(desainer) # setter
    @desainer = desainer
  end

  def self.nama_item # class method
    "Baju Bagus"
  end

  class << self
    def nomor_rak # class method juga
      48953
    end
  end

  class Kain # nested class
    def nama
      "Katun"
    end
  end
end

baju = Baju.new
baju = Baju.new("Batique")
puts baju.desainer
baju.desainer = "XYZ"
puts baju.desainer
puts Baju.nama_item
puts Baju.nomor_rak
puts baju.class.nama_item
puts Baju::BAHAN_DEFAULT

kain = Baju::Kain.new
puts kain.nama
