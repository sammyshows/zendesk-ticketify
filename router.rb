require 'uri'
require 'net/http'
require 'openssl'
require 'json'

url = URI('https://sammccarthy.zendesk.com/api/v2/requests.json')

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request.basic_auth '', ''

response = http.request(request)
JSON.parse(response.read_body)['requests'].size
