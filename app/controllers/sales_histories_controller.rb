# frozen_string_literal: true

class SalesHistoriesController < ApplicationController
  def index
    @data = arr_years.map { |year| { name: year, data: SalesHistory.by_month(year) } }
  end

  private

  def arr_years
    SalesHistory.pluck(:trans_date).map(&:year).uniq
  end
end
