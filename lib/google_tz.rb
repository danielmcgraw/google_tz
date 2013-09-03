require 'google_tz/version'
require 'google_tz/response'
require 'google_tz/query'


class GoogleTZ
  def self.lookup(lat, lng, opts={})
    GoogleTZAPI::Query.new(lat, lng, opts).lookup
  end
end