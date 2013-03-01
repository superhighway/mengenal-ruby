# tanpa argumen
def mood_main_sama_kucing
  mood = :main_sama_kucing
  puts "Aku lagi mood #{mood}"
end

mood_main_sama_kucing


# dengan satu argumen
def moodku(mood)
  mood = :main_sama_kucing unless mood
  puts "Aku lagi mood #{mood}"
end

moodku nil
moodku :pengen_gerak


# memberi nilai default pada argumen
def moodku(mood=:tidur)
  mood = :main_sama_kucing unless mood
  puts "Aku lagi mood #{mood}"
end

moodku # sama dengan suggest_ngapain(:tidur) karena defaultnya :tidur
moodku(:pengen_tidur)