#this code is for servise 

require 'httparty'

class Msegat
  include HTTParty
  base_uri 'https://msegat.com/gw/'

  def self.send_opt_in(phone_number, opt_in_message)
    api_key = 'your_api_key_here'
    params = {
      'apiKey' => api_key,
      'mobile' => phone_number,
      'msg' => opt_in_message
    }
    response = post('/smsotp', body: params)
    response.parsed_response
  end
end

# call the servise 

response = Msegat.send_opt_in('+1234567890', 'Reply with YES to opt in to our SMS program')
