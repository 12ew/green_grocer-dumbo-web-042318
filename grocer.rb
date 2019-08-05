def consolidate_cart(cart)
  keys = []
  consolidate_cart = {}
  cart.each do |item|
    x.each do |key, value|
      keys << key
      consolidate_cart[k] = value
      #binding.pry
    end
  end

  cart.map do |item|
    x.map do |key, value|
      consolidate_cart[k][:count] = keys.count(key)
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
