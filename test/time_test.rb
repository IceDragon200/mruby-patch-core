time_am = Time.new(2015, 5, 8, 7, 38, 42)
time_pm = Time.new(2016, 7, 14, 13, 59, 20)

assert 'Time#strftime with empty' do
  assert_equal '', time_pm.strftime('')
end

assert 'Time#strftime %%' do
  assert_equal '%', time_pm.strftime('%%')
end

assert 'Time#strftime %a' do
  assert_equal 'Thu', time_pm.strftime('%a')
end

assert 'Time#strftime %A' do
  assert_equal 'Thursday', time_pm.strftime('%A')
end

assert 'Time#strftime %b' do
  assert_equal 'Jul', time_pm.strftime('%b')
end

assert 'Time#strftime %B' do
  assert_equal 'July', time_pm.strftime('%B')
end

assert 'Time#strftime %c' do
  assert_equal 'Fri May 07:38:42 2015', time_am.strftime('%c')
end

assert 'Time#strftime %d' do
  assert_equal '08', time_am.strftime('%d')
  assert_equal '14', time_pm.strftime('%d')
end

assert 'Time#strftime %e' do
  assert_equal '8', time_am.strftime('%e')
  assert_equal '14', time_pm.strftime('%e')
end

assert 'Time#strftime %H' do
  assert_equal '07', time_am.strftime('%H')
  assert_equal '13', time_pm.strftime('%H')
end

assert 'Time#strftime %I' do
  assert_equal '07', time_am.strftime('%I')
  assert_equal '01', time_pm.strftime('%I')
end

assert 'Time#strftime %j' do
  assert_equal '128', time_am.strftime('%j')
end

assert 'Time#strftime %l' do
  assert_equal '7', time_am.strftime('%l')
  assert_equal '1', time_pm.strftime('%l')
end

assert 'Time#strftime %m' do
  assert_equal '05', time_am.strftime('%m')
  assert_equal '07', time_pm.strftime('%m')
end

assert 'Time#strftime %M' do
  assert_equal '38', time_am.strftime('%M')
  assert_equal '59', time_pm.strftime('%M')
end

assert 'Time#strftime %p' do
  assert_equal 'am', time_am.strftime('%p')
  assert_equal 'pm', time_pm.strftime('%p')
end

assert 'Time#strftime %P' do
  assert_equal 'AM', time_am.strftime('%P')
  assert_equal 'PM', time_pm.strftime('%P')
end

assert 'Time#strftime %S' do
  assert_equal '42', time_am.strftime('%S')
  assert_equal '20', time_pm.strftime('%S')
end

assert 'Time#strftime %w' do
  assert_equal '5', time_am.strftime('%w')
  assert_equal '4', time_pm.strftime('%w')
end

assert 'Time#strftime %x' do
  assert_equal '05/08/15', time_am.strftime('%x')
  assert_equal '07/14/16', time_pm.strftime('%x')
end

assert 'Time#strftime %X' do
  assert_equal '07:38:42', time_am.strftime('%X')
  assert_equal '13:59:20', time_pm.strftime('%X')
end

assert 'Time#strftime %y' do
  assert_equal '15', time_am.strftime('%y')
  assert_equal '16', time_pm.strftime('%y')
end

assert 'Time#strftime %Y' do
  assert_equal '2015', time_am.strftime('%Y')
  assert_equal '2016', time_pm.strftime('%Y')
end
