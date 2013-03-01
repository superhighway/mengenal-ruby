class Baju
  def desainer # getter
    @desainer ? @desainer : "Belum Tahu"
  end

  def desainer=(desainer) # setter
    @desainer = desainer
  end

  protected # yang di bawah ini menjadi protected

  attr_accessor :barcode # getter dan setter rating menjadi protected

  def rating # method ini menjadi protected
    5
  end

  private # yang di bawah ini menjadi private

  def warna
    @warna
  end
end

class LongSleeve < Baju
  attr_accessor :panjang_lengan
end

baju = LongSleeve.new
baju.panjang_lengan = 10
puts baju.panjang_lengan

baju.desainer = "Siapa ya"
puts baju.desainer

# puts baju.rating # error
# puts baju.warna # error