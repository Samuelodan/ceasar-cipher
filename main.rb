def ceasar_cipher(string, key)
  upper_case = false
  alphabets = ("a".."z").to_a
  index = nil
  crypt_letter = ""
  crypt_string = ""
  str_array = string.split("")
  str_array.each do |letter|
    #check if it's a letter
    unless letter.match?(/[a-zA-Z]/)
      crypt_string = crypt_letter + letter
      next
    end
    #check if it's uppercase
    if letter == letter.upcase
      upper_case = true
      #change it to lowercase if it is
      #letter.downcase!
    else
      upper_case = false
    end
    #check its index in our alphabet array
    index = alphabets.index(letter.downcase) - key
    #apply uppercase if it it was originally uppercase
    if upper_case == true
      crypt_letter = alphabets[index].upcase
    else 
      crypt_letter = alphabets[index]
    end

    crypt_string += crypt_letter
  end

    crypt_string

end

p ceasar_cipher("catwoman", 3)
