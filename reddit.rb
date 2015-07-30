#gem install faraday and json on linux

require 'faraday'
require 'json'
require 'launchy'
puts "choose a [sub] reddit?"

sub = gets.chomp
puts "retrieving data"

response = Faraday.get "https://www.reddit.com/r/#{sub}.json"
json_response = JSON.parse response.body
post= json_response['data']['children']


#loop iteration
i = 1
post.take(15).each do |p|
  post = p['data']
  puts "#{i}. " + post['title']
  puts "Ups: #{post['ups']} | Downs: #{post['downs']} | Score: #{post['score']}"
  puts ''
  i += 1
end

#Present option to launch any post in default browser
puts "Would you like to open any of these?  Choose the number to open, or reply 'No'"
open_url = gets.chomp!.to_s
if open_url.downcase == "no" || open_url.to_i > 15
  puts "ok just let me know"
else
  Launchy.open post[open_url.to_i - 1]['data']['url']
end
