FactoryBot.define do
  factory(:product) do
    sequence(:name) { |n| "Product_#{n}" }
    description { 'description' }
    sequence(:code, (100000..100100).cycle) {|n| n}
    price { 10.00 }

    trait :shirt do
      sequence(:name) { |n| "Shirt_#{n}" }
    end

    trait :pants do
      sequence(:name) { |n| "Pant_#{n}" }
    end
  end
end
