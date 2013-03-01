require 'set'

s1 = Set.new [1, 2]
s2 = [1, 2].to_set
puts s1 == s2
s1.add("foo")
puts s1.inspect
s1.merge([2, 6])
puts s1.inspect
puts s1.subset? s2
puts s2.subset? s1