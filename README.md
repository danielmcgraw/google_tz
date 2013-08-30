# GoogleTZ
### Get timezone information for a location from the Google Timezone API (https://developers.google.com/maps/documentation/timezone/) using the locations latitude, longitude, and optionally a timestamp.

## Installation
	
	gem install google_tz

## Usage
	
	require 'google_tz'

	# Lookup timezone information on a location using latitude, longitude, and a timestamp
	GoogleTZ.lookup(39.7392, -104.9847, 1377891332)