/* Create the atxhousing table and import the data from a CSV */
create table atxhousing(
    zpid integer primary key,
    city varchar(300),
    streetAddress varchar(300),
    zipcode integer,
    latitude numeric ,
    longitude numeric,
    propertyTaxRate numeric,
    garageSpaces int ,
    hasAssociation boolean,
    hasCooling boolean ,
    hasGarage boolean,
    hasHeating boolean,
    hasSpa boolean ,
    hasView boolean,
    homeType varchar(30),
    parkingSpaces integer,
    yearBuilt integer,
    latestPrice numeric,
    numPriceChanges integer,
    latest_saledate date,
    latest_salemonth integer,
    latest_saleyear integer,
    latestPriceSource varchar(300),
    numOfPhotos integer,
    numOfAccessibilityFeatures integer,
    numOfAppliances integer,
    numOfParkingFeatures integer,
    numOfPatioAndPorchFeatures integer,
    numOfSecurityFeatures integer,
    numOfWaterfrontFeatures integer,
    numOfWindowFeatures integer,
    numOfCommunityFeatures integer,
    lotSizeSqFt numeric,
    livingAreaSqFt numeric,
    numOfPrimarySchools integer,
    numOfElementarySchools integer,
    numOfMiddleSchools integer,
    numOfHighSchools integer,
    avgSchoolDistance numeric,
    avgSchoolRating numeric,
    avgSchoolSize numeric,
    MedianStudentsPerTeacher numeric,
    numOfBathrooms numeric,
    numOfBedrooms numeric,
    numOfStories numeric )

/* View the table results */
SELECT *
FROM atxhousing

/* Create a table for locations */
CREATE TABLE houseLocation AS
SELECT zpid, street address, city, zipcode,  latitude, longitude
FROM atxhousing

/* Add a primary key to the locations table */
ALTER TABLE houseLocation
ADD PRIMARY KEY (zpid)

/* View the locations table */
SELECT *
FROM houseLocation

/* Create a table for price */
CREATE TABLE price AS
SELECT zpid, propertytaxrate, latest price, numpricechanges, latest_saledate, latest_salemonth, latestpricesource
FROM atxhousing

/* Add a primary key for price */
ALTER TABLE price
ADD PRIMARY KEY (zpid)

/* Add a foreign key for price referencing the location table */
ALTER TABLE houseLocation
ADD FOREIGN KEY (zpid)
REFERENCES houseLocation (zpid)

/* View table */
SELECT *
FROM price

