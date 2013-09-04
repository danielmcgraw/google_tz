# GoogleTZ
##### Get timezone information for a location from the [Google Timezone API](https://developers.google.com/maps/documentation/timezone/) using the locations latitude, longitude, and optionally a timestamp, sensor, and language.

## Installation
	
	gem install google_tz

## Usage	

### Require
	require 'google_tz'

### Lookup

	# Lookup timezone information on a location using latitude and longitude.
	GoogleTZ.lookup(39.7392, -104.9847)

	# Lookup timezone information on a location using latitude, longitude, timestamp, and language
	GoogleTZ.lookup(39.7392, -104.9847, timestamp: 1377891332, language: "es")

### Response
 
	# Seeing if the Google API call was a success.
 	resp = GoogleTZ.lookup(39.7392, -104.9847)
 	resp.success?
 	  => true

	# Getting data out of the lookup response object.
 	resp = GoogleTZ.lookup(39.7392, -104.9847)
 	resp.data
 	  => {"dstOffset"=>3600, "rawOffset"=>-25200, "status"=>"OK", "timeZoneId"=>"America/Denver", "timeZoneName"=>"Mountain Daylight Time"}

	# Get daylight saving time offset 
 	resp.dst_offset
 	  => 3600 

	# Get the raw time zone offset
	resp.raw_offset
	  => -25200 
	
	# Get the status of the google api call
	resp.status
	  => "OK" 
	
	# Get the time zone id
	resp.timezone_id
	  => "America/Denver" 
	
	# Get the time zone name
	resp.timezone_name 
	  => "Mountain Daylight Time" 
