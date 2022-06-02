________________________________________

# Get the last known location 
________________________________________

we can retreave the last locatopn in the device ysing fused location provider,one of the location APIs in Google Play services.
" When your app is running in the background, access to location should be critical to the core functionality of the app and is accompanied with proper disclosure to users."

 in your code you can use  getLastLocation() method.
 
# Set up Google Play services
# Specify app permissions
# Create location services client
# Get the last known location
# Choose the best location estimate
  - getLastLocation()
  - getCurrentLocation()

this way to get your fresh location is safer.
