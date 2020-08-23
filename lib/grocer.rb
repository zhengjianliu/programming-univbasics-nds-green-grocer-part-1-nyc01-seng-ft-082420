require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item = {}
  collection.each do |key|
    if key[:item] == name
      
      item = key
    end
  end
  if item != {}
    return item
  else
    return nil
  end
  item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  cart.each do |item|
    current_item = find_item_by_name_in_collection(item[:item], new_cart)
    if current_item
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] == current_item[:item]
          new_cart_item[:count] += 1
        end
      end
    else
      item[:count] = 1
      new_cart.push(item)
    end
  end
  new_cart
end


  