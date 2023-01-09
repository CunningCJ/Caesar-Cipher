def caesar_cipher(string, number)
  p number = number.remainder(26)
  letter_arr = string.split("")
  p let_code = letter_arr.map { |x| x.ord}
  p l_code_num = let_code.map { |x| 
    if x.between?(65, 90)
      new_num = x + number
        if new_num > 90 
          new_num - 26
        elsif new_num < 65
          new_num + 26
        else
          new_num
        end
    else
      x
    end}
  #p l_code_num
  p l_code_num2 = l_code_num.map { |x|
      if x.between?(97, 122)
      new_num1 = x + number
        if new_num1 > 122
          new_num1 - 26
        elsif new_num1 < 97
          new_num1 + 26
        else
          new_num1
        end
      else
        x
      end
  }
  encrypt = l_code_num2.map { |x| x.chr}
  p encrypt.join
end