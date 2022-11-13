def grammar_check(text)
  fail "Invalid sentence." if text.empty?
  first_letter_is_uppercase = text[0] == text[0].upcase
  last_character_is_correct_punctuation = [".", "!", "?"].include? text[-1]
  if first_letter_is_uppercase && last_character_is_correct_punctuation
    return true
  else
    return false
  end
end
