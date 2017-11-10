require 'httparty'


random_word_response = HTTParty.get("http://setgetgo.com/randomword/get.php")

10.times do
	ten_random_words = HTTParty.get("http://setgetgo.com/randomword/get.php")
	puts ten_random_words
end