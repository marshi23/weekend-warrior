PARTS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

class Alouette
  def self.lines_for_verse(verse_num)
    lines = []
      until verse_num < 0
        lines << ("Et" + " " + PARTS[verse_num] + "!")
        verse_num -= 1
      end
      return lines
  end

  def self.verse(verse_num)
    verse = []
     2.times do
        verse << "Je te plumerai" + " " + PARTS[verse_num] + "."
     end


    lines = lines_for_verse(verse_num)
    lines.each  do |line|
        2.times do
          verse << line
        end
     end

    2.times do
      verse << "Alouette!"
    end

    verse << "A-a-a-ah"

    return verse

  end

  def self.sing
    song = []

    PARTS.each_with_index do |line, index|
      song << "Alouette, gentille alouette"
      song << "Alouette, je te plumerai."
      song << " "

      song <<  self.verse(index)
      song << " "
    end

    return song
  end

end
