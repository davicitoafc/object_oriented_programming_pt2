#Item class applies basic sales tax
class Item
  attr_reader :price, :name

  def initialize(name, price, import)
    @name = name
    @price = price
    @import = import
    @item_cost = 0
  end #end for initialize

  def tax
    tax = 0
    exempt = ["book", "medicine", "food"]
    if @import == true && exempt.include?(@name)
      #tax= duty true 0.05 exempt= true tax = 0.0
      tax = 0.05
    elsif @import == true && !exempt.include?(@name)
      tax = 0.15
    elsif @import == false && !exempt.include?(@name)
      tax = 0.10
    elsif @import == false && exempt.include?(@name)
      tax = 0
    end
    tax * @price
  end

def total
  @price + self.tax
end

end

class Receipt

  def initialize
    @items = []
  end

  def add(item)
    @items.push(item)
  end

  def print_receipt
    @items.each do |item|
      puts "#{item.name}: #{item.price}"
    end
    puts "------------------------"
    puts "Sales Tax: $#{total_tax}"
    puts "Total: $#{total_cost + total_tax}"
  end

  def total_tax
    tax = 0
    @items.each do |item|
      tax += item.tax
    end
    tax
  end

  def total_cost
    total = 0
    @items.each do |item|
      total += item.price
    end
     total.round(2)
  end



end #end for Receipt class
