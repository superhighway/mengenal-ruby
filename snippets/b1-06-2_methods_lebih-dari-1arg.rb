# lebih dari satu parameter
def moodku(mood1=nil, mood2)
  for mood in [mood1, mood2]
    mood = :main_sama_kucing unless mood
    puts "Aku lagi mood #{mood}"
  end
end

moodku :pengen_gerak, nil
moodku :pengen_belanja
puts

# variabel argument, argument bisa terserah berapa aja
def moodku(*moods)
  for mood in moods
    mood = :main_sama_kucing unless mood
    puts "Aku lagi mood #{mood}"
  end
end

moodku nil, :pengen_belanja, :pengen_gerak
puts
