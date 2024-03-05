# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin_user = AdminUser.where(email: 'admin@knightingale.com').first_or_create(password: 'Master123#', password_confirmation: 'Master123#')
puts "> Admin User:"
puts "> Email: admin@knightingale.com"
puts "> Password: Master123#"
puts ""

customer = Customer.create(email: "customer1@knightingale.com", name: "customer1", status: true, cr_date: Date.today, cr_limit: 2, sr_limit: 400)

user = User.new(
  customer_id: customer.id,
  email: "user@knightingale.com",
  first_name: "test",
  last_name: "user",
  country: "India",
  state: "Delhi",
  phone: "0123456789",
  active: true,
  username: "testuser",
  password: "Master123#",
  password_confirmation: "Master123#"
)
user.save
puts "> User: user@knightingale.com"
puts "> password: Master123#"

ips = [ "158.214.29.107", "254.211.233.46", "38.203.6.192",
        "236.241.135.237" ,"73.6.124.185", "58.148.146.249",
        "94.38.83.129", "73.6.124.185", "195.79.39.138",
        "73.6.124.185", "241.211.230.54", "208.39.242.37", "::1"]

ips.each do |ip|
  ip_address = IpAddress.new(ip: ip, user_id: user.id)
  ip_address.save
end