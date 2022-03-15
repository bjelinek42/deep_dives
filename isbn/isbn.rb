def isbn_verify?(isbn_string)
  isbn_string = isbn_string.delete("-")
  p isbn_string
end

puts isbn_verify?("168-05072-22")