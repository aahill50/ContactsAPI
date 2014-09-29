require 'addressable/uri'
require 'rest_client'

##### We are testing create of contact_shares_controller #####

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contact_share.html'
).to_s

new_contact_share_hash = {
  contact_share: {
    contact_id: 1,
    user_id: 5
  }
}

puts RestClient.post(url, new_contact_share_hash)

# rails c
# ContactShare.all
# User.find(5).shared_contacts
# should both contain contact_id 1 for user(5)


