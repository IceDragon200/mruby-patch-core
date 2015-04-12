class Integer
  def round(*a)
    a.empty? ? floor : to_f.round(*a)
  end
end
