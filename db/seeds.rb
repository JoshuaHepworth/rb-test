# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# item_one = { item_number: 1, name: "Roller", sap_number: "10345106", tr_number: "6585_30026", rb_number: "", material: "Steel", finish: "Black Oxide", lead_time: 4, additional: ""}

# Item.create(item_one)


# require 'csv'    

# csv_text = File.read('...')
# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|
#   Moulding.create!(row.to_hash)
# end

require 'csv'

csv_text = File.read('./db/dbimport.csv')
csv = CSV.parse(csv_text)
csv.each do |row|
	item = {
		item_number: row[0],
		sap_number: row[1],
		tr_number: row[2],
		rb_number: row[3],
		name: row[4],
		machine: row[5],
		material: row[6],
		finish: row[7],
		lead_time: row[8],
		additional: row[9]

	}
	print item
	Item.create(item)
end
