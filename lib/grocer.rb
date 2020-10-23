require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    if hash[:item] == name
      return hash
    end
  end
  return nil
end

def consolidate_cart(cart)
  scanned_cart= []
  cart.each do |cart_hash|
    scanned_cart.each do |scan_hash|
    end
  end
    binding.pry
      if scan_hash == find_item_by_name_in_collection(cart_hash[:item], scanned_cart)
          scan_hash[:count] += 1
      else
        scanned_cart << cart_hash
        scan_hash[:item][:count] = 1
      end
    end
  end
  binding.pry
  return scanned_cart
end
