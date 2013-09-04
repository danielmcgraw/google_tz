require 'spec_helper'

describe 'GoogleTZ' do
  describe 'lookup' do
    it 'fetches timezone info for a given latitude, longitude' do
      GoogleTZ.should_receive(:lookup).and_return(GoogleTZAPI::Response.new("{\n   \"dstOffset\" : 3600,\n   \"rawOffset\" : -25200,\n   \"status\" : \"OK\",\n   \"timeZoneId\" : \"America/Denver\",\n   \"timeZoneName\" : \"Mountain Daylight Time\"\n}\n"))
      resp = GoogleTZ.lookup(39.7392, -104.9847)
      
      resp.success?.should == true
      resp.status.should == 'OK'
      resp.dst_offset.should == 3600
      resp.raw_offset.should == -25200
      resp.timezone_id.should == "America/Denver"
      resp.timezone_name.should == "Mountain Daylight Time"
	end

	it 'fetches timezone info when given optional arguments' do
    GoogleTZ.should_receive(:lookup).and_return(GoogleTZAPI::Response.new("{\n   \"dstOffset\" : 3600,\n   \"rawOffset\" : -25200,\n   \"status\" : \"OK\",\n   \"timeZoneId\" : \"America/Denver\",\n   \"timeZoneName\" : \"Rocky Mountain Sommerzeit\"\n}\n"))
	  resp = GoogleTZ.lookup(39.7392, -104.9847, timestamp: 1377891332, sensor: false, language: "de")

    resp.success?.should == true
    resp.status.should == 'OK'
    resp.dst_offset.should == 3600
    resp.raw_offset.should == -25200
    resp.timezone_id.should == "America/Denver"
    resp.timezone_name.should == "Rocky Mountain Sommerzeit"
	end
  end
end