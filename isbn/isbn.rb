def isbn_verify?(isbn_string)
  isbn_string = isbn_string.delete("-")
  if isbn_string.length == 10
    p isbn_string, isbn_string.to_i
    if isbn_string.count("a-zA-Z") == 0
      i = 10
      total = 0
      isbn_string.each_char do |char|
        total = total + (char.to_i * i)
        i -= 1
        p total
      end
      if total % 11 == 0
        true
      else
        false
      end
    elsif isbn_string[-1] == "X"
    else
      p 2
      false
    end
  else
    p 1
    false
  end
end

puts isbn_verify?("168-05072-22")