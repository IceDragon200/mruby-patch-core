assert 'Enumerable#chunk' do
  expected = [ [true, [1, 3, 5, 7]], [false, [2, 4]], [true, [1]], [false, [2]], [true, [3]] ]
  actual = [1, 3, 5, 7, 2, 4, 1, 2, 3].chunk do |e|
    e % 2 == 1 # equivalent to #odd?
  end
  expected == actual
end
