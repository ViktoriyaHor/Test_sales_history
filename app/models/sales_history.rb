class SalesHistory < ApplicationRecord
  def self.by_month(year)
    where('extract(year from trans_date) = ?', year).group("month(trans_date)")
        .sum(:trans_total_extax_value)
  end
end
