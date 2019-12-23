# frozen_string_literal: true

class SalesHistory < ApplicationRecord
  validates :APN_code, :RRP, :last_buy_price, :item_description,
            :actual_stock_on_hand, :trans_date, :trans_time,
            :trans_document_number, :trans_reference_number,
            :trans_quantity, :trans_total_extax_value, :trans_total_tax,
            :trans_total_discount_given, presence: true

  def self.by_months
    SalesHistory.group("year(trans_date)").group("month(trans_date)")
        .sum(:trans_total_extax_value)
  end
end
