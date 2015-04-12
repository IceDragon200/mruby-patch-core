class Array
  # sort_by! bang implementation for mruby.
  #
  # @yieldparam [Object] element to sort
  # @yieldreturn [#<=>] comparable to sort with
  def sort_by!(&block)
    sort! { |a, b| block.call(a) <=> block.call(b) }
  end

  def slice!(i, *j)
    s = i
    l = 1
    if Range === i
      s = i.begin
      l = i.end - s
      l += 1 unless i.exclude_end?
    elsif !j.empty?
      raise ArgumentError, "wrong argument count, got #{j.size + 1} (expected 2)" if j.size > 1
      l = j.first
    end
    acc = []
    l.times { acc << delete_at(s) }
    acc.__svalue
  end
end
