require 'addressable/uri'
require 'rest_client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html'
# ).to_s
#
# puts RestClient.get(url)


############# START - WORK FOR Nesting Parameters #############

###brain storming Now make some POST requests to /users playing around with POST data

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html'
# ).to_s
#
# puts RestClient.post 'localhost:3000/users', :param1 => 'one', :nested => { :param2 => 'two' }
#
# #puts RestClient.post 'localhost:3000/users', { 'var1' => 'val1'}
# #https://github.com/rest-client/rest-client


#######brain storming 2
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/5.json',
#   query_values: {
#     'some_category[a_key]' => 'another value',
#     'some_category[a_second_key]' => 'yet another value',
#     'some_category[inner_inner_hash][key]' => 'value',
#     'something_else' => 'aaahhhhh'
#   }
# )
#
#
# putsRestClient.post(url, url.query_values)


# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html'
# ).to_s
#
# p url
#
# RestClient.get(url)

# RestClient.post(url, {
#     'some_category[a_key]' => 'another value',
#     'some_category[a_second_key]' => 'yet another value',
#     'some_category[inner_inner_hash][key]' => 'value',
#     'something_else' => 'aaahhhhh'
#   })

# RestClient.post( url,
#  {
#   'id' => 5,
#   'some_category' => {
#     'a_key' => 'another value',
#     'a_second_key' => 'yet another value',
#     'inner_inner_hash' => {
#       'key' => 'value'
#     }
#   },
#   'something_else' => 'aaahhhhh'
#  })



############# END - WORK FOR Nesting Parameters #############

#
# RestClient.get('http://localhost:3000/users')
#
# RestClient.post('http://localhost:3000/users', {'cat' => {'big' => 'tom', small: 'bob'}})
#
# puts RestClient.get('http://localhost:3000/users')


############# Creating a User through the API #############
# def create_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users.json'
#   ).to_s
#
#   puts RestClient.post(
#     url,
#     # { user: { name: "Gizmo", email: "gizmo@giz.mo" } }
#     { user: { name: "Gizmo" } }
#   )
# end
#
# create_user


############# TESTING show update destroy user ###########

  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/2'
  ).to_s

  # puts RestClient.get(url)


   puts RestClient.patch(url, { user: { name: "Gizmo" }})

  #puts RestClient.delete(url)