require_relative 'lib/ticket_repository'
require_relative 'lib/tickets_controller'
require_relative 'router'
require 'uri'
require 'net/http'
require 'openssl'
require 'json'

def authenticate(username, password)
  url = URI('https://sammccarthy.zendesk.com/api/v2/requests.json')

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request.basic_auth username, password

  response = http.request(request)
  JSON.parse(response.read_body)['requests']
end

puts "Welcome to your ticket viewer!"
puts "Please log in to view your tickets:"
print "Username: "
username = gets.chomp
print "Password: "
password = gets.chomp

if authenticate(username, password)
  puts "true"
else
  puts "false"
end
