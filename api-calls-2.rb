require 'httparty'
require 'json'


random_word_response = HTTParty.get("http://setgetgo.com/randomword/get.php")
# random_word_json = JSON.parse(random_word_response.body)

puts random_word_response