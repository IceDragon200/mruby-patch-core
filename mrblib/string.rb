class String
  # Replaces the occurences of `expected` string with the `replacement`
  # in the string
  #
  # @param [String] expected
  # @param [String] replacement
  # @return [String]
  def tr(expected, replacement)
    result = ""
    i = 0
    exsize = expected.size
    last_slice_i = 0
    while i < size
      if self[i, exsize] == expected
        result << self[last_slice_i...i]
        result << replacement
        i += exsize
        last_slice_i = i
      else
        i += 1
      end
    end
    if last_slice_i < size
      result << self[last_slice_i, size - last_slice_i]
    end
    result
  end

  # (see #tr)
  def tr!(*args)
    replace(tr(*args))
  end
end
