# Defined in - @ line 0
function geoip --description 'alias geoip=geoiplookup -f /usr/share/GeoIP/GeoLiteCity.dat'
	geoiplookup -f /usr/share/GeoIP/GeoLiteCity.dat $argv;
end
