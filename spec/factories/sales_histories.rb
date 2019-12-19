# frozen_string_literal: true

FactoryBot.define do
  factory :sales_history do
    APN_code { Faker::Code.npi }
    RRP { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    last_buy_price { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    item_description { Faker::Book.title }
    author { Faker::Book.author }
    product_category { Faker::Name.initials(number: 2) }
    actual_stock_on_hand { Faker::Number.number(digits: 2) }
    trans_date { Faker::Date.between(from: 2.years.ago, to: Date.today) }
    trans_time { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    trans_document_number { Faker::Code.nric }
    trans_reference_number { Faker::Code.nric }
    trans_quantity { Faker::Number.number(digits: 2) }
    trans_total_extax_value { Faker::Number.decimal(l_digits: 5, r_digits: 2) }
    trans_total_tax { Faker::Number.decimal(l_digits: 5, r_digits: 2) }
    trans_total_discount_given { Faker::Number.decimal(l_digits: 5, r_digits: 2) }
  end
end
