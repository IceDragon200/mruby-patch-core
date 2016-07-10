a, b = { a: 1 }, { a: 1, b: 2 }

assert 'Hash#<' do
  assert_true a < b
  assert_false b < a
  assert_false a < a
  assert_false b < b
end

assert 'Hash#<=' do
  assert_true a <= b
  assert_true a <= a
  assert_true b <= b
  assert_false b <= a
end

assert 'Hash#>' do
  assert_true b > a
  assert_false a > b
  assert_false a > a
  assert_false b > b
end

assert 'Hash#>=' do
  assert_true b >= a
  assert_true b >= b
  assert_true a >= a
  assert_false a >= b
end
