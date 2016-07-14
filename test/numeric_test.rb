assert 'Numeric#zero?' do
  0.0.zero? and 0.zero?
end

assert 'Numeric#nonzero?' do
  1.0.nonzero? and 0.1.nonzero? and 1.nonzero?
end
