require 'spec_helper'

describe 'GoogleTZ' do
  describe 'lookup' do
    it 'fetches timezone info for a given latitude, longitude' do
      response = GoogleTZ.lookup(39.7392, -104.9847)

      response.should_not be_nil
      response.should == "{\n   \"dstOffset\" : 3600,\n   \"rawOffset\" : -25200,\n   \"status\" : \"OK\",\n   \"timeZoneId\" : \"America/Denver\",\n   \"timeZoneName\" : \"Mountain Daylight Time\"\n}\n"
	end

	it 'fetches timezone info when given optional arguments' do
	  response = GoogleTZ.lookup(39.7392, -104.9847, timestamp: 1377891332, sensor: false, language: "de")

      response.should_not be_nil
      response.should == "{\n   \"dstOffset\" : 3600,\n   \"rawOffset\" : -25200,\n   \"status\" : \"OK\",\n   \"timeZoneId\" : \"America/Denver\",\n   \"timeZoneName\" : \"Rocky Mountain Sommerzeit\"\n}\n"
	end
  end
end



"{\n   \"dstOffset\" : 3600,\n   \"rawOffset\" : -25200,\n   \"status\" : \"OK\",\n   \"timeZoneId\" : \"America/Denver\",\n   \"timeZoneName\" : \"Hora de verano de Montaña\"\n}\n"
'{\n   \"dstOffset\" : 3600,\n   \"rawOffset\" : -25200,\n   \"status\" : \"OK\",\n   \"timeZoneId\" : \"America/Denver\",\n   \"timeZoneName\" : \"Hora de verano de Monta\\xC3\\xB1a\"\n}\n'
