# frozen_string_literal: false

# SOLUTION 1, #ASCII METHOD
def ceasar_cipher(string:, key:)
  crypt_string = ''
  string.each_char do |character|
    unless character.match?(/[a-zA-Z]/)
      # skip entire process and add character to final crypt_string if it's not a letter
      crypt_string += character
      next
    end
    character = character.ord
    if character.between?('a'.ord, 'z'.ord) # for lowercase
      position = character - 'a'.ord
      character = ((position + key) % 26) + 'a'.ord # 26 letters in the alphabet
    else # for uppercase
      position = character - 'A'.ord
      character = ((position + key) % 26) + 'A'.ord
    end
    crypt_string << character.chr
  end
  crypt_string
end

p ceasar_cipher(string: 'zzzzzz', key: 3)
