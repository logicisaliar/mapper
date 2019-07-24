require 'csv'

i = 1
puts "Creating States - #{i}"
csv_text = File.read(Rails.root.join('lib', 'seeds', "state.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = State.new
  t.name = row['name']
  t.field_1 = row['field_1']
  t.field_2 = row['field_2']
  t.field_3 = row['field_3']
  t.field_4 = row['field_4']
  t.field_5 = row['field_5']
  t.field_6 = row['field_6']
  t.field_7 = row['field_7']
  t.field_8 = row['field_8']
  t.field_9 = row['field_9']
  t.save!
end
puts "States created"
i += 1


puts "Creating Cities - #{i}"
csv_text = File.read(Rails.root.join('lib', 'seeds', "city.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
s = 0
csv.each do |row|

  t = City.new
  t.name = row['name']
  t.state_id = row['state_id']
  t.field_1 = row['field_1']
  t.field_2 = row['field_2']
  t.field_3 = row['field_3']
  t.field_4 = row['field_4']
  t.field_5 = row['field_5']
  t.field_6 = row['field_6']
  t.field_7 = row['field_7']
  t.field_8 = row['field_8']
  t.field_9 = row['field_9']
  if t.field_7 == 1
    t.save!
  end
  puts "#{t.name} created #{City.all.length} attempt #{s}"
  s+=1
end
puts "Cities created"
