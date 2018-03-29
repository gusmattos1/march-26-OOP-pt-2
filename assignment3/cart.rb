require_relative 'item.rb'

class Cart

  @@cart = []
  @@tax = 0.13
  @@total_price_no_tax = 0
  @@total_prixe_with_tax = 0


  def self.create(name, price)
    new_item = Item.new(name, price)
    @@cart.push(new_item)
  end

  def self.Cart
    @@cart
  end

  def self.delete(item_to_delete)
    @@cart.each do |item|
      if item.name == item_to_delete
        @@cart.delete(item)
      end
    end
  end

  def self.tax
    @@tax
  end

  def self.tax=(new_tax)
    @@tax = new_tax
  end

  def self.total_no_tax
    @@cart.each do |item|
      @@total_price_no_tax << item.total_price_no_tax
    end
  end

  def self.total_with_tax
    @@total_prixe_with_tax = (@@total_price_no_tax * @@tax)
  end

end
