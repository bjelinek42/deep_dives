def isbn_verify?(isbn_string)
  isbn_string = isbn_string.delete("-")
  if isbn_string.length == 10
    if isbn_string.count("a-zA-Z") == 0
      i = 10
      total = 0
      isbn_string.each_char do |char|
        total = total + (char.to_i * i)
        i -= 1
      end
      if total % 11 == 0
        true
      else
        false
      end
    elsif isbn_string[-1] == "X" && isbn_string.count("a-zA-WYZ") == 0
      p "goodbye"
      i = 10
      total = 0
      isbn_string.each_char do |char|
        if char == "X"
          total += 10
        else
          total = total + (char.to_i * i)
          i -= 1
        end
      end
      if total % 11 == 0
        true
      else
        false
      end
    else
      false
    end
  else
    p 1
    false
  end
end

puts isbn_verify?("3-598-P1581-X")