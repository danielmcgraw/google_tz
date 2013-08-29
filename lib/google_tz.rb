module GoogleTZ
  class << self
  	def lookup(lat, lng, timestamp)
      q = Query.new(lat, lng, timestamp)
      q.lookup
    end
  end
end

require 'google_tz/query'