require 'httparty'
require 'json'

def toronto
  toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
  toronto_wards_json = JSON.parse(toronto_wards_response.body)

  toronto_wards_json["objects"].each do |ward|
    puts ward["name"]
  end
end

def ottawa
  ottawa_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/?sets=toronto-wards%2Cottawa-wards')
  ottawa_wards_json = JSON.parse(ottawa_wards_response.body)

  ottawa_wards_json["objects"].each do |ward|
    puts ward["name"]
  end
end

puts "Toronto"
puts "--------------------"
toronto
puts ""
puts "Ottawa"
puts "--------------------"
ottawa
