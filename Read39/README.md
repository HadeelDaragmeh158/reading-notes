________________________________________

# Get the last known location 
________________________________________

we can retreave the last locatopn in the device ysing fused location provider,one of the location APIs in Google Play services.
" When your app is running in the background, access to location should be critical to the core functionality of the app and is accompanied with proper disclosure to users."

 in your code you can use  getLastLocation() method.
 
# Set up Google Play services
   to get location, you should have google play in your device, after that you can add the librarry for your app. 
# Specify app permissions
   Apps whose features use location services must request location permissions, depending on the use cases of those features.
# Create location services client
   you can work in onCreate method and make instance  of the Fused Location Provider Client.
# Get the last known location
 you can get the last location of users device using  getLastLocation() method.
 
 
             fusedLocationClient.getLastLocation()
        .addOnSuccessListener(this, new OnSuccessListener<Location>() {
            @Override
            public void onSuccess(Location location) {
                // Got last known location. In some rare situations this can be null.
                if (location != null) {
                    // Logic to handle location object
                }
            }
        });
        
        
# Choose the best location estimate
  - getLastLocation()
  - getCurrentLocation()

this way to get your fresh location is safer.
