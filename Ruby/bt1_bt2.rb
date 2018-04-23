def reverse(strings)
  i = strings.length
  word =''
  while i>0
    i -=1
    word += strings[i]
  end
  return word
end
def checkSimular(strings)
  if strings != reverse(strings)
    return false
  else
    return true
  end
end


  puts "Nhap vao 1 chuoi"
  strings = gets.chomp()
  puts reverse(strings)
  puts checkSimular(strings)
