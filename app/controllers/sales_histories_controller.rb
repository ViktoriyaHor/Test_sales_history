class SalesHistoriesController < ApplicationController
  def index
    @year = SalesHistory.pluck(:trans_date).map{ |dt| dt.year }.uniq
    @data = @year.map { |year| { name: year, data: SalesHistory.by_month(year)} }
  end
end
