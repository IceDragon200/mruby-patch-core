mruby-patch-core
=================

Patches some missing features in mruby.

## Features
### Array
```ruby
# sort_by!
["aaa", "bb", "d", "cccc"].sort_by! { |s| s.size } # => ["d", "bb", "aaa", "dddd"]

# slice!
v = [1, 2, 3, 4, 5, 6, 7, 8]
a = v.slice!(-1)   # => 8
v                  # => [1, 2, 3, 4, 5, 6, 7]
b = v.slice!(1, 2) # => [2, 3] 
v                  # => [1, 4, 5, 6, 7]
c = v.slice!(1..3) # => [4, 5, 6]
v                  # => [1, 7]
```

### Enumerable
```ruby
# chunk
[1, 3, 5, 7, 2, 4, 1, 2, 3].chunk do |e|
  e % 2 == 1 # equivalent to #odd?
end # => [[true, [1, 3, 5, 7]], [false, [2, 4]], [true, [1]], [false, [2]], [true, [3]]]
```

### Fixnum, Float
```ruby
# modulo
7.modulo(2) #=> 1
```

### Integer
```ruby
# round
1.round(2) #=> 1.0
10.round #=> 10
```

### Integral
```ruby
# pred
1.pred #=> 0
10.pred #=> 9
10.67.pred #=> 9
```

### Module
```ruby
# name
Array.name #=> "Array"
Class.name #=> "Class"

class MyAwesomeClass 
end

MyAwesomeClass.name #=> "MyAwesomeClass"
```

### Numeric
```ruby
# zero?
0.zero?   #=> true
1.zero?   #=> false
0.0.zero? #=> true
2.7.zero? #=> false

# nonzero?
0.nonzero?   #=> false
1.nonzero?   #=> true
0.0.nonzero? #=> false
2.7.nonzero? #=> true
```

### String
```ruby
"aabbcc".tr("aab", "d") #=> "dbcc"
```

### Time

```ruby
# strftime
now = Time.now
now.strftime('%x') #=> "07/14/2016"
```
