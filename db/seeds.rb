# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_thing
  @thing = Thing.new(title: "Title", summary: "Summary",
                     link: "example@example.com")
  @thing.save
end

100.times do
  create_thing
end
