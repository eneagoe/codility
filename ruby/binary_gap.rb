def solution(n)
  cnt = 0
  result = 0
  ones = false

  i = n
  while i != 0
    if i & 1 == 1
      if !ones
        ones = true
      else
        result = [result, cnt].max
      end
      cnt = 0
    else
      cnt += 1
    end
    i >>= 1
  end

  result
end

puts solution(1041)
puts solution(32)
