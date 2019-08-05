def consolidate_cart(cart)
    keys = []
  consolidate_cart = {}
  cart.each do |x|
    x.each do |k, v|
      keys << k
      consolidate_cart[k] = v
      #binding.pry
    end
  end

  cart.map do |x|
    x.map do |k, v|
      consolidate_cart[k][:count] = keys.count(k)
    end
  end
  consolidate_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
