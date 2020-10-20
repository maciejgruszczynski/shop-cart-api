puts 'Creating products'

initial_product_code = '000000'
(1..30).each do |i|
  Product.where(
    name: "Shirt_#{i}",
    description: "Description of shirt_#{i}",
    code: initial_product_code.next!,
    price: rand(10.00..50.00)
  ).first_or_create!
end

puts 'Products created'
