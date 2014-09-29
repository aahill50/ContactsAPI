require 'addressable/uri'
require 'rest_client'

##### We are testing index of contacts_controller #####

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts.html'
# ).to_s
#
# putsRestClient.get(url)

#rake routes    <--- shows routes


##### We are testing create of contacts_controller #####

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts.html'
# ).to_s
#
# new_contact_hash = {
#   contact: {
#     name: "NEWEST contact",
#     email: "emailiscool@internet.gov",
#     user_id: 4
#   }
# }
#
# puts RestClient.post(url, new_contact_hash)

#to make sure fully validated
#rails console
#User.find(4).contacts


##### We are testing show of contacts_controller #####

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts/3'
# ).to_s
#
# puts RestClient.get(url)


##### We are testing update of contacts_controller #####

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts/3'
# ).to_s
#
# updated_contact_hash = {
#   contact: {
#     name: "my new name",
#     email: "ijustchange@myemail.polka"
#   }
# }
#
# puts RestClient.patch(url, updated_contact_hash)


#rails console
#Contact.find(3)
#should be new name instead of tom

##### We are testing delete of contacts_controller #####

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/3'
).to_s


puts RestClient.delete(url)

#rails console
#Contact.find(3)
#should not be found