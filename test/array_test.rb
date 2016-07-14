assert 'Array#sort_by!' do
  d = [[1, 2], [1], [3, 4, 5], [1, 5, 6, 7, 8], [1, 2, 3, 4]]
  d.sort_by! { |a| a.size }
  d == [[1], [1, 2], [3, 4, 5], [1, 2, 3, 4], [1, 5, 6, 7, 8]]
end

assert 'Array#slice!' do
  v = [1, 2, 3, 4, 5, 6, 7, 8]
  a = v.slice!(-1)
  b = v.slice!(1, 2)
  c = v.slice!(1..3)
  8 == a and b == [2, 3] and c == [4, 5, 6] and v == [1, 7]
end
