require 'google_tz/query'

module GoogleTZ
  def self.lookup(lat, lng, timestamp)
    q = Query.new(lat, lng, timestamp)
    q.lookup
  end
end