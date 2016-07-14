assert 'Float#pred' do
  1.0.pred == 0 and 10.12.pred == 9
end

assert 'Integer#pred' do
  0.pred == -1 and 10.pred == 9
end
