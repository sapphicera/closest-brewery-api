# require 'csv'

# csv_text = File.read('breweries_us.csv', :headers=>true)
# csv = CSV.parse(csv_text, :headers => true)

# csv.each do |row|
#   Location.create!(row.to_hash)
# end

require 'geocoder'

Location.all.each do |element|
  geocode = Geocoder.search(element[:address])
  if geocode != []
    element[:latlon] = [geocode[0].data['lat'], geocode[0].data['lon']]
    element.save!
    p element
  end
end