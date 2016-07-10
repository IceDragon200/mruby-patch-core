class Hash
  def <(other)
    b = other.to_hash
    return false if self == b
    each do |key, value|
      return false unless b.key?(key) && b[key] == value
    end
    true
  end

  def >(other)
    b = other.to_hash
    return false if self == b
    b.each do |key, value|
      return false unless key?(key) && self[key] == value
    end
    true
  end

  def >=(other)
    b = other.to_hash
    return b == self || self > b
  end

  def <=(other)
    b = other.to_hash
    return b == self || self < b
  end
end
