def e_extractor(str)
  letters = str.chars
  e_letters = letters.select { |l| l == "e" }
  non_e_letters = letters.select { |l| l != "e" }
  return "#{e_letters.join}#{non_e_letters.join}"
end
