# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
string_converter = lambda {|field|
  begin
     case field.to_s
       when "APN code"
         'APN_code'
       when "R.R.P."
         'RRP'
       else
         field.downcase.gsub(' ', '_')
       end
   rescue ArgumentError
     field
   end
}

CSV.foreach(Rails.root.join('lib/Test_Sales_History.csv'),
            :headers => true, :converters => :all,
            :header_converters => [string_converter]) do |row|
  SalesHistory.create(row.to_h)
end
