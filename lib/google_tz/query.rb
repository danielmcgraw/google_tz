require 'net/http'
require 'uri'
require 'openssl'

module GoogleTZAPI
  class Query
    def initialize(lat, lng, opts)
      @lat = lat
      @lng = lng
      @timestamp = opts[:timestamp] || Time.now.to_i
      @sensor = opts[:sensor] || false
      @language = opts[:language] || "en"
    end

    def lookup
      response = make_request(build_uri)
      response.body
    end

    private
    def build_uri
      uri = URI.parse("https://maps.googleapis.com/maps/api/timezone/json")
      args = { :location => "#{@lat},#{@lng}", timestamp: @timestamp, sensor: @sensor, language: @language }
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