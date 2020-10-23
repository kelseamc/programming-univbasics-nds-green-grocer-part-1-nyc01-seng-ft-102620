require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    if hash[:item] == name
      return hash
    end
  end
  nil
end

def consolidate_cart(cart)
  scanned_cart= []
  cart.each do |cart_hash|
    scanned_cart.each do |scan_hash|
      item = find_item_by_name_in_collection(cart_hash[:item], scanned_cart)
      if item 
          item[:count] += 1
      else
        cart_hash[:count] = 1
        scanned_cart << cart_hash
      end
    end
  end
  return scanned_cart
end
