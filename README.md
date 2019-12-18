# postgis-with-h3
Postgis with h3 extension 

## Running the container 
docker run -p 5433:5432 <container name>

## Enabling the extension 
You will need to log into this container once it is installed and run the following command 

create extension pgh3; 

The above command will need to be run for any database you wish to enable h3 support on. 


