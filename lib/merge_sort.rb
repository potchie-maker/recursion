def merge_sort(arr)

  return arr if arr.length <= 1

  left = arr[0...(arr.length / 2)]
  right = arr[(arr.length / 2)..]
  # puts "left #{left}, right #{right}"
  left = merge_sort(left)
  right = merge_sort(right)

  result = []
  i = 0
  j = 0
  while i < left.length && j < right.length
    if left[i] < right[j] || left[i] == right[j]
      result << left[i]
      i += 1
    elsif left[i] > right[j]
      result << right[j]
      j += 1
    end
  end
  result += left[i..]
  result += right[j..]
  # puts "result #{result}"
  result
end

puts "Merge Sorted: #{merge_sort([26, 1, 33, 4, 5])}"
puts "Merge Sorted: #{merge_sort([3, 2, 1, 13, 8, 5, 0, 1])}"
puts "Merge Sorted: #{merge_sort([105, 79, 100, 110])}"