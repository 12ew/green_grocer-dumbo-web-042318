def consolidate_cart(cart)
  keys = []
  consolidated_cart = {}
  cart.each do |item|
    x.each do |key, value|
      keys << key
      consolidated_cart[key] = value
      #binding.pry
    end
  end

  cart.map do |item|
    x.map do |key, value|
      consolidated_cart[k][:count] = keys.count(key)
    end
  end
  consolidated_cart
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
