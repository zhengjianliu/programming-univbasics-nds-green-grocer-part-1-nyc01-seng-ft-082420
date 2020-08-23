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
  
  final = []
  cart.each_with_index { |item,index|
     scan_item = find_item_by_name_in_collection(item[:item],final)
     if scan_item
       final.each_with_index {|final, count|
       if final[:item] == scan_item[:item]
         final[:count]+=1
       end
       bew
       }
     end
  
  }
  
end


  