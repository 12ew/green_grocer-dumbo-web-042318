def consolidate_cart(cart)
  keys = []
  consolidated_cart = {}
  cart.each do |items|
    items.each do |key, value|
      keys << key
      consolidated_cart[key] = value
    end
  end

  cart.map do |items|
    items.map do |key, value|
      consolidated_cart[key][:count] = keys.count(key)
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
