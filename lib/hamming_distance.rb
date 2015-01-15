require 'byebug'

class StringsUnequalLength < ArgumentError
end

def hamming_distance(string_1, string_2)
  hamming_distance = 0
  if string_1.length == string_2.length
    arr1, arr2 = string_1.split(""), string_2.split("")
    arr1.each_with_index { |item,index| item == arr2[index] ? nil : hamming_distance += 1 }
  else
    raise StringsUnequalLength
  end
  hamming_distance
end
