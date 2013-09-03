require 'json'

module GoogleTZAPI
  class GoogleTZResponse
    def initialize(json)
      @data = JSON.parse(json)
    end

    def success?
      @data['status'].eql?('OK')
    end

    def dst_offset
      @data.fetch('dstOffset', nil)
    end

    def raw_offset
      @data.fetch('rawOffset', nil)
    end

    def status
      @data.fetch('status')
    end

    def timezone_id
      @data.fetch('timeZoneId', nil)
    end

    def timezone_name
      @data.fetch('timeZoneName', nil)
    end

    def data
      @data
    end
  end
end