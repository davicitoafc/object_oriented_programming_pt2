require_relative 'sales_tax'

#1st Basket
puts "====================="
puts "1st Receipt"
receipt = Receipt.new

book = Item.new("book", 12.49, false)
receipt.add(book)

music = Item.new("music CD", 14.99, false)
receipt.add(music)

chocolate_bar = Item.new("Chocolate bar", 0.85, false)
receipt.add(chocolate_bar)

receipt.print_receipt


#2nd Basket
puts "====================="
puts "2nd Receipt"
receipt2 = Receipt.new

import_box = Item.new("imported box of chocolates", 10.00, true)
receipt2.add(import_box)
import_bottle= Item.new("imported bottle of perfume", 47.50, true)
receipt2.add(import_bottle)

receipt2.print_receipt

#3rd Basket
puts "====================="
puts "3rd Receipt"
receipt3 = Receipt.new

bottle_perfume = Item.new("bottle of perfume", 18.99, false)
receipt3.add(bottle_perfume)
import_bottle= Item.new("imported bottle of perfume", 27.99, true)
receipt3.add(import_bottle)
packet_pills = Item.new("packet of headache pills", 9.75, false)
receipt3.add(packet_pills)
import_box = Item.new("imported box of chocolates", 11.25, true)
receipt3.add(import_box)

receipt3.print_receipt
