# GoogleTZ
##### Get timezone information for a location from the [Google Timezone API](https://developers.google.com/maps/documentation/timezone/) using the locations latitude, longitude, and optionally a timestamp, sensor, and language.

## Installation
	
	gem install google_tz

## Usage
	
	require 'google_tz'

	# Lookup timezone information on a location using latitude and longitude.
	GoogleTZ.lookup(39.7392, -104.9847)

	# Lookup timezone infomration on a location using latitude, longitude, timestamp, and language
	GoogleTZ.lookup(39.7392, -104.9847, timestamp: 1377891332, language: "es")