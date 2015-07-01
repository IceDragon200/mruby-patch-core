class Integer
  # @param [Integer] decimals
  # @return [Numeric]
  def round(*a)
    a.empty? ? floor : to_f.round(*a)
  end
end
