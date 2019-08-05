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
    new_cart = {}

  cart.each do |key, value|
    coupons.each do |x|
      if key == x[:item] && x[:num] <= value[:count]
        cart[key][:count] -= x[:num] 
        if new_cart["#{key} W/COUPON"]
          new_cart["#{key} W/COUPON"][:count] += 1
        else
          new_cart["#{key} W/COUPON"] = {
            :price => x[:cost],
            :clearance => value[:clearance],
            :count => 1,
          }
        #binding.pry
        end
      end
    end
    new_cart[key] = value
  end
  new_cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
