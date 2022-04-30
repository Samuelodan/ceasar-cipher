def ceasar_cipher(string, key)
  upper_case = false
  alphabets = ("a".."z").to_a
  index = nil
  crypt_letter = ""
  crypt_string = ""
  str_array = string.split("")
  str_array.each do |character|
    #check if character is a letter in the English alphabet
    unless character.match?(/[a-zA-Z]/)
      crypt_string += character
      next
    end
    #check if letter is uppercase
    if character == character.upcase
      upper_case = true
      #change it to lowercase if it is
      character.downcase!
    else
      upper_case = false
    end
    #check its index in our array of alphabets
    #and get new index based on #{key}
    index = alphabets.index(character) - key
    #apply uppercase to new cryptic letter if it it was originally uppercase
    if upper_case == true
      crypt_letter = alphabets[index].upcase
    else 
      crypt_letter = alphabets[index]
    end

    crypt_string += crypt_letter
  end

    crypt_string

end

p ceasar_cipher("Samodan195 egg", 3)
