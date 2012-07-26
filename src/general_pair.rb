module GeneralPair

  def cons left, right
    lambda { |f| f[left, right] }
  end

  def car pair
    f = lambda { |left, right| left }
    pair[f]
  end

  def cdr pair
    f = lambda { |left, right| right }
    pair[f]
  end

end