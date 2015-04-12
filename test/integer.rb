assert 'Integer#round without parameters' do
  1.round == 1 and 2.round == 2 and 1887986.round == 1887986
end

assert 'Integer#round with parameters' do
  r = 1.round(1)
  assert_kind_of Float, r
  assert_float 1.0, r
end
