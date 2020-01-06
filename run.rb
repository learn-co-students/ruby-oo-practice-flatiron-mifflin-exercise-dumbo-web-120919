require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
kmart = Manager.new("Mclovin", 23, "Stock")
wal = Manager.new("Brie Larson", 50, "Customer service")
hated_child_sadface = Manager.new("Baron Trump", 15, "Stock")

hipster = Employee.new("Miley Cyrus", 350, kmart)
news_loser = Employee.new("Don Lemon", 250, wal)
rino = Employee.new("Anna Naavaro", 300, hated_child_sadface)
joy_not_fo_joy = Employee.new("Joy Behar", 477, hated_child_sadface)
andy = Employee.new("Anderson Cooper", 200, wal)
sarah_o_sara = Employee.new("Sarah Silverman", 289, kmart)


binding.pry
puts "done"
