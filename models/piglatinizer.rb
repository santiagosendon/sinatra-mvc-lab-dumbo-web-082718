class PigLatinizer

  @@vowels = [ "a", "e", "i", "o", "u"]

  def piglatinize(string)
    input_array = string.split(" ")
    output_array = input_array.map do |word|
      letter_array = word.split("")
      if @@vowels.include?(letter_array[0].downcase)
        word + "way"
      else
        new_word_array = letter_array
        letter_array.each do |letter|
          until @@vowels.include?(new_word_array[0].downcase)
            new_word_array=new_word_array.rotate
          end
        end
        new_word_array.join("") + "ay"
      end
    end
    output_array.join(" ")
  end

end
