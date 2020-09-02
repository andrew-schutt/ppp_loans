# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

puts "Loading up states and territories..."
state_or_territories = StateOrTerritory.create([
{ name: 'Alabama' },
{ name: 'Alaska' },
{ name: 'American Samoa' },
{ name: 'Arizona' },
{ name: 'Arkansas' },
{ name: 'California' },
{ name: 'Colorado' },
{ name: 'Connecticut' },
{ name: 'Delaware' },
{ name: 'District of Columbia' },
{ name: 'Florida' },
{ name: 'Georgia' },
{ name: 'Guam' },
{ name: 'Hawaii' },
{ name: 'Idaho' },
{ name: 'Illinois' },
{ name: 'Indiana' },
{ name: 'Iowa' },
{ name: 'Kansas' },
{ name: 'Kentucky' },
{ name: 'Louisiana' },
{ name: 'Maine' },
{ name: 'Maryland' },
{ name: 'Massachusetts' },
{ name: 'Michigan' },
{ name: 'Minnesota' },
{ name: 'Mississippi' },
{ name: 'Missouri' },
{ name: 'Montana' },
{ name: 'Nebraska' },
{ name: 'Nevada' },
{ name: 'New Hampshire' },
{ name: 'New Jersey' },
{ name: 'New Mexico' },
{ name: 'New York' },
{ name: 'North Carolina' },
{ name: 'North Dakota' },
{ name: 'Northern Mariana Islands' },
{ name: 'Ohio' },
{ name: 'Oklahoma' },
{ name: 'Oregon' },
{ name: 'Pennsylvania' },
{ name: 'Puerto Rico' },
{ name: 'Rhode Island' },
{ name: 'South Carolina' },
{ name: 'South Dakota' },
{ name: 'Tennessee' },
{ name: 'Texas' },
{ name: 'Utah' },
{ name: 'Vermont' },
{ name: 'U.S. Virgin Islands' },
{ name: 'Virginia' },
{ name: 'Washington' },
{ name: 'West Virginia' },
{ name: 'Wisconsin' },
{ name: 'Wyoming' }
])

puts "Loading up loan files..."
loan_csv_files = Dir.glob("**/*.csv")
puts loan_csv_files
loan_csv_files.each do |file|
  csv_text = File.read(file)
  loan_csv = CSV.parse(csv_text, :headers => true)
  loan_csv.each do |loan_record|
    LoanRecord.create!(loan_record.to_hash)
  end
end