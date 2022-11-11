def extract_uppercase(text)
  words = text.split(" ")
  uppercase_words = words.select do |word|
    word == word.upcase
  end
  stripped = uppercase_words.map do |word|
    word.gsub(/[^A-Z]/, "") #gets rid off all non-uppercase alphanumeric letters
  end
end
