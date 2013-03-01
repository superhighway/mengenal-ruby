def jual_baju(handler)
  harga, n = 99900, 10
  handler.call(harga, n)
end

jual_baju proc { |harga, n, nama_penjaga_kasir|
  puts "Saya beli #{n} baju dengan harga Rp #{harga} per baju. Yang jaga kasir: #{nama_penjaga_kasir.inspect}"
}

# error
jual_baju ->(harga, n, nama_penjaga_kasir) {
  puts "Saya beli #{n} baju dengan harga Rp #{harga} per baju. Yang jaga kasir: #{nama_penjaga_kasir.inspect}"
}