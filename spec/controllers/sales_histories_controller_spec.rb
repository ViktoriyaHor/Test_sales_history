# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SalesHistoriesController, type: :controller do
  describe '#index' do
    3.times do |i|
        i += 1
        let!(:"sales_history_#{i}") {
          create(:sales_history, trans_total_extax_value: 10 + i,
                 trans_date: Date.new(2015, 12, 3) + i.year)
        }
    end

    subject! { get :index }

    it 'returns a successful response to GET' do
      expect(response).to have_http_status(200)
    end

    it 'render template :index' do
      expect(response).to render_template :index
    end

    it 'assigns @data' do
      expect(assigns(:data)).to eq( [2016, 12] => 11,
                                     [2017, 12] => 12,
                                     [2018, 12]=> 13
                                   )
    end
  end
end
