def fibs(n)
  return [] if n == 0
  return [0] if n == 1
  seq = [0, 1]
  for i in 2...n
    seq << seq[i-1] + seq[i-2]
  end
  return seq
end

puts "Iterative Method Result: #{fibs(8)}"

def fibs_rec(n, i = 2, seq = nil)
  # puts 'This was printed recursively'
  seq ||= [0, 1]

  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 2

  return fibs_rec(n, i + 1, seq << seq[i-1] + seq[i-2]) if i < n

  seq
end

puts "Recursive Method Result: #{fibs_rec(8)}"