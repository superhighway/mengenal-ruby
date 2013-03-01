class Baju
  attr_accessor :merek, :ukuran
  attr_reader :tahun_desain

  def desainer # getter
    @desainer ? @desainer : "Belum Tahu"
  end

  def desainer=(desainer) # setter
    @desainer = desainer
  end

  protected :desainer= # method desainer= menjadi protected
  private :merek, :tahun_desain # method merek dan tahun desain menjadi private

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

baju = Baju.new
# baju.warna # error karena private
# baju.rating # error karena protected
# baju.merek # error karena private
puts baju.desainer; puts
# baju.desainer = "Orang Keren" # error karena protected

class KostumBadut < Baju
  def bagus?
    puts self.rating # subclass bisa akses yang protected
    rating >= 3
  end
  
  def warni
    @warna = "Pelangi"
    puts warna.inspect
    self.warna # tidak bisa karena private
  end
end

kostum_badut = KostumBadut.new
puts "Kostum badutnya bagus? #{kostum_badut.bagus?}"
puts kostum_badut.warni