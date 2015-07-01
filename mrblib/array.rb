class Array
  # sort_by! bang implementation for mruby.
  #
  # @yieldparam [Object] element to sort
  # @yieldreturn [#<=>] comparable to sort with
  def sort_by!(&block)
    sort! { |a, b| block.call(a) <=> block.call(b) }
  end

  # @overload slice!(index)
  #   @param [Integer] index
  # @overload slice!(start, length)
  #   @param [Integer] start
  #   @param [Integer] length
  # @overload slice!(range)
  #   @param [Range] range
  #   @return [Array]
  # @example
  #   v = [1, 2, 3, 4, 5, 6, 7, 8]
  #   a = v.slice!(-1)   # => 8
  #   v                  # => [1, 2, 3, 4, 5, 6, 7]
  #   b = v.slice!(1, 2) # => [2, 3]
  #   v                  # => [1, 4, 5, 6, 7]
  #   c = v.slice!(1..3) # => [4, 5, 6]
  #   v                  # => [1, 7]
  def slice!(i, *j)
    s = i
    l = 1
    a = false # expects array?
    if Range === i
      s = i.begin
      l = i.end - s
      l += 1 unless i.exclude_end?
      a = true
    elsif !j.empty?
      raise ArgumentError, "wrong argument count, got #{j.size + 1} (expected 2)" if j.size > 1
      l = j.first
      a = true
    end
    acc = []
    l.times { acc << delete_at(s) }
    a ? acc : acc.first
  end
end
