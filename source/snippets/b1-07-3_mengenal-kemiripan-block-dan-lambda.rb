puts "Method yang memiliki argument sebuah Proc"
def punya_proc
  yield
end

punya_proc { puts "yield proc" }
punya_proc &->{ puts "yield lambda" }

def punya_proc(&ada_proc)
  ada_proc.call
end

punya_proc { puts "call &proc" }
punya_proc &->{ puts "call &lambda" }

def punya_proc(ada_proc)
  ada_proc.call
end

punya_proc proc { puts "call proc" }
punya_proc ->{ puts "call lambda" }

puts; puts "Method yang memiliki lebih dari satu Proc"

def punya_banyak_proc(proc1, proc2)
  proc1.call
  proc2.call
end

punya_banyak_proc proc { puts "call proc1" }, proc { puts "call proc2" }
punya_banyak_proc ->{ puts "call lambda1" }, ->{ puts "call lambda2" }

puts; puts "Default nilai parameter untuk argumen Proc"

def kasih_default
  yield
  yield("hihihi")
end
kasih_default { |ini="default lho"| puts ini }
kasih_default &->(ini="default lho"){ puts ini }