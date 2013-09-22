require 'json'
require 'curb'

class AlchemyAPI
  
  BASE_URL = 'http://access.alchemyapi.com/'
  TEXT_KEYWORDS = 'calls/text/TextGetRankedKeywords'

  def initialize key
    @key = key 
  end

  def textGetRankedKeywords(text)
    options = {
      apikey: @key,
      text: text,
      outputMode: 'json'
    }

    response = JSON.parse(Curl.post(BASE_URL + TEXT_KEYWORDS, options).body_str)
    return response["keywords"].map{ |e| e["text"]}
  end
end