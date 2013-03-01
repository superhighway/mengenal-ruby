module DapatDipanggil
  def panggilan
    case @jenis_kelamin
    when :pria
      "Mr"
    when :wanita
      "Ms"
    else
      ""
    end
  end
end

module PakaiSeragam
  def seragam
    puts "Seragam kotak-kotak"
  end
end

class Pegawai
  include DapatDipanggil # method di dlm modul DapatDipanggil menjadi instance methods Pegawai
  extend PakaiSeragam # method di dlm modul PakaiSergam menjadi class methods Pegawai

  attr_accessor :jenis_kelamin, :nama

  def nama_lengkap
    "#{panggilan}. #{nama}"
  end
end

Pegawai.seragam
pegawai = Pegawai.new
pegawai.jenis_kelamin = :wanita
pegawai.nama = "Jeni"
puts pegawai.nama_lengkap