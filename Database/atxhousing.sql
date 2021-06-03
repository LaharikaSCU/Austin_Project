CREATE TABLE public.atxhousing
(
    zpid bigint, 
    city text COLLATE pg_catalog."default",
    "streetAddress" text COLLATE pg_catalog."default",
    zipcode bigint,
    description text COLLATE pg_catalog."default",
    latitude double precision,
    longitude double precision,
    "propertyTaxRate" double precision,
    "garageSpaces" bigint,
    "hasAssociation" boolean,
    "hasCooling" boolean,
    "hasGarage" boolean,
    "hasHeating" boolean,
    "hasSpa" boolean,
    "hasView" boolean,
    "homeType" text COLLATE pg_catalog."default",
    "parkingSpaces" bigint,
    "yearBuilt" bigint,
    "latestPrice" double precision,
    "numPriceChanges" bigint,
    latest_saledate text COLLATE pg_catalog."default",
    latest_salemonth bigint,
    latest_saleyear bigint,
    "latestPriceSource" text COLLATE pg_catalog."default",
    "numOfPhotos" bigint,
    "numOfAccessibilityFeatures" bigint,
    "numOfAppliances" bigint,
    "numOfParkingFeatures" bigint,
    "numOfPatioAndPorchFeatures" bigint,
    "numOfSecurityFeatures" bigint,
    "numOfWaterfrontFeatures" bigint,
    "numOfWindowFeatures" bigint,
    "numOfCommunityFeatures" bigint,
    "lotSizeSqFt" double precision,
    "livingAreaSqFt" double precision,
    "numOfPrimarySchools" bigint,
    "numOfElementarySchools" bigint,
    "numOfMiddleSchools" bigint,
    "numOfHighSchools" bigint,
    "avgSchoolDistance" double precision,
    "avgSchoolRating" double precision,
    "avgSchoolSize" bigint,
    "MedianStudentsPerTeacher" bigint,
    "numOfBathrooms" double precision,
    "numOfBedrooms" bigint,
    "numOfStories" bigint,
    "homeImage" text COLLATE pg_catalog."default"
);

/* View the table results */
SELECT *
FROM atxhousing ;

ALTER TABLE atxhousing
ADD PRIMARY KEY(zpid);

/* Create a table for locations */
CREATE TABLE houseLocation AS
SELECT zpid, "streetAddress", city, zipcode,  latitude, longitude
FROM public.atxhousing;


/* Add a primary key to the locations table */
ALTER TABLE houseLocation
ADD PRIMARY KEY (zpid);

/* View the locations table */
SELECT *
FROM houseLocation;

DROP TABLE price

/* Create a table for price */
CREATE TABLE price AS
SELECT zpid, "propertyTaxRate", "latestPrice", "numPriceChanges", latest_saledate, "yearBuilt",
latest_salemonth, "latestPriceSource"
FROM atxhousing;

/* Add a primary key for price */
ALTER TABLE price
ADD PRIMARY KEY (zpid);


/* Add a foreign key for price referencing the location table */
ALTER TABLE houseLocation
ADD FOREIGN KEY (zpid)
REFERENCES houseLocation (zpid) ;


/* View table */
SELECT *
FROM price


CREATE TABLE features AS
SELECT zpid, "garageSpaces", "hasCooling", "hasGarage", "hasHeating", "hasSpa", "hasView",
"numOfPatioAndPorchFeatures", "numOfWaterfrontFeatures", "numOfPhotos"
FROM atxhousing;


/*Add a foreign key to the features table referencing the location table */
ALTER TABLE features
ADD FOREIGN KEY (zpid)
REFERENCES price (zpid);

/*Add a foreign key to the features table referencing the location table */
ALTER TABLE features
ADD FOREIGN KEY (zpid)
REFERENCES price (zpid);

/* View the features table */
SELECT *
FROM features
;

/* Create the amenities table */
CREATE TABLE amenities AS
SELECT zpid, "parkingSpaces", "numOfAccessibilityFeatures", "numOfAppliances", "numOfParkingFeatures", 
	"numOfSecurityFeatures","numOfWindowFeatures", "numOfCommunityFeatures", "numOfBathrooms", "numOfBedrooms",
	"numOfStories", "lotSizeSqFt", "livingAreaSqFt"
FROM atxhousing;

/* Add a primary key to the amenities table */
ALTER TABLE amenities
ADD PRIMARY KEY (zpid);


/* Add a foreign key to the amenities table */
ALTER TABLE amenities
ADD FOREIGN KEY (zpid)
REFERENCES price (zpid) 
;

/* View amenities table */
SELECT *
FROM amenities;


/* Create a table for schools */
CREATE TABLE schools AS
SELECT zpid, "numOfPrimarySchools", "numOfElementarySchools", "numOfMiddleSchools", "numOfHighSchools",
	"avgSchoolDistance", "avgSchoolRating", "avgSchoolSize", "MedianStudentsPerTeacher" 
FROM atxhousing;

/* Set the primary key for schools */
ALTER TABLE schools
ADD PRIMARY KEY (zpid);


/* Set the foreign key for schools */
ALTER TABLE schools
ADD FOREIGN KEY (zpid)
REFERENCES houseLocation  (zpid);


/* View schools table */
SELECT *
FROM schools;

/* house additional info */
create table house_additional_info 
as select zpid , description, "homeImage" 
from atxhousing;

ALTER TABLE house_additional_info
ADD PRIMARY KEY (zpid;

ALTER TABLE house_additional_info
ADD FOREIGN KEY (zpid)
REFERENCES houseLocation (zpid) ;


select * from house_additional_info;

/* Joined query of all the features related to house price prediction */
select 
	hl.zpid, 
	hl."streetAddress",
	hl.city,
	hl.zipcode,
	hl.latitude,
	hl.longitude,
	--price info
	pr."propertyTaxRate",
	pr."latestPrice",
	pr."numPriceChanges",
	pr."latest_saledate",
	pr."latest_salemonth",
	pr."latestPriceSource",
	pr."yearBuilt",
	--features
	fe."garageSpaces", 
	fe."hasCooling",
	fe."hasGarage",
	fe."hasHeating",
	fe."hasSpa", 
	fe."hasView",
	fe."numOfPatioAndPorchFeatures",
	fe."numOfWaterfrontFeatures",
	fe."numOfPhotos",
	--amenties
	am."parkingSpaces", 
	am."numOfAccessibilityFeatures", 
	am."numOfAppliances", 
	am."numOfParkingFeatures",
	am."numOfSecurityFeatures",
	am."numOfWindowFeatures",
	am."numOfCommunityFeatures",
	am."numOfBathrooms",
	am."numOfBedrooms",
	am."numOfStories",
	am."lotSizeSqFt",
	am."livingAreaSqFt",
	--school features
	sc."numOfPrimarySchools",
	sc."numOfElementarySchools",
	sc."numOfMiddleSchools",
	sc."numOfHighSchools",
	sc."avgSchoolDistance",
	sc."avgSchoolRating",
	sc."avgSchoolSize",
	sc."MedianStudentsPerTeacher",
	-- house_additional_info
	hi."homeImage",
	hi.description
		
from houseLocation  hl
inner join price    pr on hl.zpid = pr.zpid
inner join features fe on hl.zpid = fe.zpid
inner join amenities am on hl.zpid = am.zpid 
inner join schools   sc on hl.zpid = sc.zpid 
inner join house_additional_info hi on hl.zpid = hi.zpid
