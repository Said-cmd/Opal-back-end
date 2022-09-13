puts "🧑‍🦱 Creating users..."

user = User.create(name: "User")

puts "🏦 Creating transactions..."

t1 = Transaction.create(user_id: user.id, date: "2022-08-01", description: "Paycheck from Bob's Burgers", amount: 1000, category: "Income")
t2 = Transaction.create(user_id: user.id, date: "2022-08-01", description: "South by Southwest Quinoa Bowl at Fresh & Co", amount: -10.55, category: "Food")
t3 = Transaction.create(user_id: user.id, date: "2022-08-02", description: "December's Rent", amount: -1020, category: "Bills")
t4 = Transaction.create(user_id: user.id, date: "2022-08-04", description: "Sunglasses, Urban Outfitters", amount: -24.99, category: "Shopping")
t5 = Transaction.create(user_id: user.id, date: "2022-08-06", description: "Venmo, Alice Pays you for Burrito", amount: 8.75, category: "Food")
t6 = Transaction.create(user_id: user.id, date: "2022-08-07", description: "Birthday Check from Grandma", amount: 50, category: "General")
t7 = Transaction.create(user_id: user.id, date: "2022-08-09", description: "Uber", amount: -13.25, category: "Transport")
t8 = Transaction.create(user_id: user.id, date: "2022-08-11", description: "Paycheck from TFL", amount: 1000, category: "Income")
t9 = Transaction.create(user_id: user.id, date: "2022-08-16", description: "Tickets, Flatiron Multiplex Cinemas", amount: -24, category: "Entertainment/Leisure")
t10 = Transaction.create(user_id: user.id, date: "2022-08-16", description: "MTA Vending Machine: MetroCard", amount: -116.39, category: "General")
t11 = Transaction.create(user_id: user.id, date: "2022-09-01", description: "Savings for August", amount: 1000, category: "Savings")

puts "✅ Done seeding!"