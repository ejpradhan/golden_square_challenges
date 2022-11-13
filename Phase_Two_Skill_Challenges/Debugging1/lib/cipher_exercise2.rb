def encode(plaintext, key)
  cipher = key.chars.uniq + (("a".."z").to_a - key.chars)
  # 5. p key.chars.uniq
  # 6. p ("a".."z").to_a to be used instead of ("a"..."z")
  # 7. p ("a".."z").to_a - key.chars
  # exit
  ciphertext_chars = plaintext.chars.map do |char|
    # 1. p "cipher.find_index(char):"
    # 2. p cipher.find_index(char)
    # 3. p char
    # 4. p cipher
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (("a".."z").to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    # 5. cipher[65 - char.ord]
    # 6. p char
    # 7. p char.ord
    # 8. p cipher
    # 9. p cipher[65 - char.ord]
    # out_char = cipher[(65 - char.ord).abs]  #65-69 = index -4
    cipher[char.ord - 65]
    # 10. p "should be 't'  (encoded first letter 'E' should decode as 't')"
    # putting the cipher out index -4 is 'v', 't' is at index 4
    # check the next letter in encode 'M'
    # 11. p "Actually is #{out_char}"
    # 12. exit
  end
  return plaintext_chars.join
end

p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
p "theswiftfoxjumpedoverthelazydog"

# Intended output:

# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

# to check for letter 'M'
# p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# p "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
# p decode("MBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# p "heswiftfoxjumpedoverthelazydog"

# 'M' 65-77 = -12 should be 'h'
# putting cipher out, is actually "j", index 12 is 'h'
# so the problem is we are getting negative index numbers instead of positive ones
# instead of 65 - 69 = -4 is should chard.ord which is 69 - 65 = 4
