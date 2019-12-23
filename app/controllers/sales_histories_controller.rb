# frozen_string_literal: true

class SalesHistoriesController < ApplicationController

  def index
    @data = SalesHistory.by_months
  end

end
