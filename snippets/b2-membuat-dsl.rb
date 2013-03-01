class Resep
  def self.yang_dibutuhkan(*args)
    return @yang_dibutuhkan if args.count == 0

    @yang_dibutuhkan = [] unless @yang_dibutuhkan
    args.each do |arg|
      nama_ivar = :"@#{arg}"
      @yang_dibutuhkan << nama_ivar
      define_method(:"tambah_#{arg}") do |a|
        instance_variable_get(nama_ivar).push(a)
      end
    end
  end
  
  yang_dibutuhkan :langkah, :bahan, :peralatan

  def initialize(judul)
    @judul = judul
    dibutuhkan = self.class.yang_dibutuhkan
    (dibutuhkan || []).each do |nama_ivar|
      instance_variable_set(nama_ivar, [])
    end
=begin
# Sudah diset melalui metaprogramming di atas
    @langkah = []
    @bahan = []
    @peralatan = []
=end
  end

=begin
# Sudah didefine melalui metaprogramming di atas

  def tambah_langkah(langkah)
    @langkah << langkah
  end

  def tambah_bahan(bahan)
    @bahan << bahan
  end
  
  def tambah_peralatan(peralatan)
    @peralatan << peralatan
  end
=end
  
  def deskripsi
    <<-EOL
==============================
   Resep Membuat #{@judul}
==============================

 Bahan-Bahan:
------------------------------
#{listing_bernomor @bahan}

 Peralatan:
------------------------------
#{listing_bernomor @peralatan}

 Langkah-Langkah:
------------------------------
#{listing_bernomor @langkah}

    EOL
  end

  def self.buat(judul, &blok)
    resep = Resep.new judul
    resep.instance_eval &blok
    resep
  end
  
  private
  
  def listing_bernomor(listing)
    listing.each_with_index.map do |item, index|
      "#{index + 1}. #{item}"
    end.join("\n")
  end
end

resep = Resep.buat "Ayam Kukus" do
  tambah_peralatan "Panci Kukus"
  tambah_peralatan "Garpu"
  
  tambah_bahan "Ayam"
  tambah_bahan "Bumbu (tidak wajib)"
  
  tambah_langkah "Masukkan ayam ke dalam panci kukus"
  tambah_langkah "Masukkan nasi secukupnya"
  tambah_langkah "Tunggu sampai ayamnya cukup empuk"
  tambah_langkah "Coba sesekali tusuk ayamnya untuk mengecek apakah sudah cukup empuk"
  tambah_langkah "Sesudah selesai mengukus ayam, kasih bumbu secukupnya"
end
puts resep.deskripsi