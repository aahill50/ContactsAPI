require 'addressable/uri'
require 'rest_client'

##### We are testing index of contacts_controller #####

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts.html'
).to_s

puts RestClient.get(url)

#rake routes    <--- shows routes