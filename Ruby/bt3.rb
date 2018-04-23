# def increasing(arr)
#   for i in 0..arr.length-1
#
#     for j in i+1...arr.length
#       if arr[i] > arr[j]
#         swap(arr[i],arr[j])
#       end
#     end
#   end
#   return arr
# end
# def swap(a,b)
#   temp = a
#   a= b
#   b = temp
# end

def sortA_Z(arr)
  arr.sort! {|first,second| first<=>second}
end
def sortZ_A(arr)
  arr.sort {|first,second| second<=>first}
end
arr = [10,1,20,222,302,203,40]
##puts increasing(arr)
puts sortA_Z(arr)
puts sortZ_A(arr)