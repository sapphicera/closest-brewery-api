# require 'geocoder'
# require 'csv'

# puts "insert your City here! (ex. 'Brooklyn, NY, US')"
# answer = gets.chomp

# results = Geocoder.search(answer)
# p results.first.coordinates

# csv_text = File.read('breweries_us.csv', :headers=>true)
# csv = CSV.parse(csv_text, :headers => true)
# new_csv = []

# csv.each do |row|
#   new_csv << row.to_hash
# end

# new_csv.each do |row|
#   pp row
# end

