require 'net/http'
require 'uri'
require 'openssl'

module GoogleTZ
  class Query
    def initialize(lat, lng, timestamp)
      @lat=lat
      @lng=lng
      @timestamp=timestamp
    end

    def lookup
      response = make_request(build_uri)
      response.body
    end

    private
    def build_uri
      uri = URI.parse("https://maps.googleapis.com/maps/api/timezone/json")
      args = { :location => "#{@lat},#{@lng}", timestamp: @timestamp, sensor: false }
      uri.query = URI.encode_www_form(args)
      uri
    end

    def make_request(uri)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)
      response
    end
  end
end