class SalesHistory < ApplicationRecord
  def self.by_year(year)
    where('extract(year from trans_date) = ?', year)
  end
end
