class CreateSalesHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :sales_histories do |t|
      t.string :APN_code
      t.decimal :RRP, :precision => 5, :scale => 2
      t.decimal :last_buy_price, :precision => 5, :scale => 2
      t.string :item_description
      t.string :author
      t.string :product_category
      t.integer :actual_stock_on_hand
      t.date :trans_date
      t.time :trans_time
      t.string :trans_document_number
      t.string :trans_reference_number
      t.integer :trans_quantity
      t.decimal :trans_total_extax_value, :precision => 10, :scale => 2
      t.decimal :trans_total_tax, :precision => 10, :scale => 2
      t.decimal :trans_total_discount_given, :precision => 10, :scale => 2
      t.timestamps
    end
  end
end
