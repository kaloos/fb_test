class ArrFb < Array

  def prod_i (i)
    if i < 0
      return
    end
    prod = 1
    for j in 0..(self.size-1)
      if i != j then
        prod = prod * self [j]
      end
    end
    return prod
  end

  def prod_fb
    #careful! we need to duplicate the original value
    internal_array = self.dup
    for i in 0..(self.size-1)
      self[i] = internal_array.prod_i(i)
    end
    self
  end
end
