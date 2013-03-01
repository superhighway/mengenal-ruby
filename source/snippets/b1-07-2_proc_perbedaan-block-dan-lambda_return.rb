def proc_return
  proc { return "proc"}.call
  return "proc_return selesai"
end

def lambda_return
  lambda { return "lambda" }.call
  return "lambda_return selesai"
end

puts proc_return
puts lambda_return; puts

def iterasi_array_dengan_proc
  [1, 17].each { |tanggal_libur|
    puts "Tanggal #{tanggal_libur} libur!!"
    return "Udah ah liburannya" if tanggal_libur == 1
  }
end

def iterasi_array_dengan_lambda
  [1, 17].each &->(tanggal_libur) {
    puts "Tanggal #{tanggal_libur} libur!!"
    return "Udah ah liburannya" if tanggal_libur == 1
  }
end

puts iterasi_array_dengan_lambda.inspect; puts
puts iterasi_array_dengan_proc.inspect