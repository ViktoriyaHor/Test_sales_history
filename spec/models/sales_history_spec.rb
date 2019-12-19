# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SalesHistory, type: :model do

  describe 'validations' do
    subject(:sales_history) { build(:sales_history) }

    context 'presence' do
      %i[APN_code RRP last_buy_price item_description actual_stock_on_hand
      trans_date trans_time trans_document_number trans_reference_number
      trans_quantity trans_total_extax_value trans_total_tax trans_total_discount_given].each do |field|
        it { is_expected.to validate_presence_of(field) }
      end
    end

    context 'exist columns of types' do
      %i[APN_code item_description author product_category trans_document_number
        trans_reference_number].each do |field|
          it { is_expected.to have_db_column(field).of_type(:string) }
        end

      %i[RRP last_buy_price trans_total_extax_value trans_total_tax
        trans_total_discount_given].each do |field|
          it { is_expected.to have_db_column(field).of_type(:decimal) }
        end
      %i[actual_stock_on_hand trans_quantity].each do |field|
        it { is_expected.to have_db_column(field).of_type(:integer) }
      end

      it { is_expected.to have_db_column(:trans_date).of_type(:date) }
      it { is_expected.to have_db_column(:trans_time).of_type(:time) }

      %i[created_at updated_at].each do |field|
        it { is_expected.to have_db_column(field).of_type(:datetime) }
      end
    end
  end

  describe 'method self.by_month(year)' do
    4.times do |i|
      i += 1
      let!(:"sales_history_#{i}") { create(:sales_history, trans_total_extax_value: 10,
                                           trans_date: Date.new(2019, 12, 3) + i) }
    end

    it "retuns data with a valid parameter" do
      expect(SalesHistory.by_month(2019)).to eq({ 12 => 40 })
    end

    it "retuns data with a parameter nill" do
      expect(SalesHistory.by_month(nil)).to eq({})
    end
  end
end
