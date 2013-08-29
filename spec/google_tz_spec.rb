require 'spec_helper'

describe GoogleTZ do
  describe 'lookup' do
    it 'fetches timezone info for a given latitude, longitude, and timestamp' do
    	response = GoogleTZ.lookup(39.7392, -104.9847, 1377754760)

    	response.should_not be_nil
    	response.should == "{\n   \"dstOffset\" : 3600,\n   \"rawOffset\" : -25200,\n   \"status\" : \"OK\",\n   \"timeZoneId\" : \"America/Denver\",\n   \"timeZoneName\" : \"Mountain Daylight Time\"\n}\n"
	end
  end
end