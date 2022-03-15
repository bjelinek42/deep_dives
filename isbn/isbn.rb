def isbn_verify?(isbn_string)
  isbn_string = isbn_string.delete("-")
  if isbn_string.length == 10
    if isbn_string = isbn_string.to_i
      
    else
      false
    end
  else
    false
  end
end

puts isbn_verify?("168-05072-22")