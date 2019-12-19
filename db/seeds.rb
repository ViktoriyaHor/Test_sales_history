# frozen_string_literal: true

string_converter = lambda { |field|
  begin
    case field.to_s
    when 'APN code'
      'APN_code'
    when 'R.R.P.'
      'RRP'
    else
      field.downcase.gsub(' ', '_')
    end
  rescue ArgumentError
    field
  end
}

CSV.foreach(Rails.root.join('lib/Test_Sales_History.csv'),
            headers: true, converters: :all,
            header_converters: [string_converter]).with_index do |row, count|
  SalesHistory.create(row.to_h)
  break if Rails.env.production? && count == 10_000
end
