# Wildflower Resort
Youtube link: https://youtu.be/SZQHkAeC_Dc

## How to run
```
1.) Run all queries in sql folder

2.) Compile:
javac -cp lib/connector-8.0.19.jar -d bin/ src/main/java/ser322/*.java

3.a) Run with input args:
java -cp lib/connector-8.0.19.jar:bin/ main/java/ser322/Main URL USERNAME PASSWORD

3.b) Run with args found in credentials.txt:
java -cp lib/connector-8.0.19.jar:bin/ main/java/ser322/Main

4.) Query tables - examples below
SELECT * FROM GUEST WHERE GUESTID = 1
SELECT * FROM RESERVATION WHERE PRICE < 200
SELECT * FROM ROOMTYPE WHERE MAXOCCUPANCY < 10
SELECT * FROM AMENITY WHERE TYPE = 'POOL'
```

## Application Domain and Description:
This domain is an internal hotel bookkeeping system providing users with all the information they need to book a luxurious vacation including room availability, prices, public and private events, and amenities including lazy river, pool, hot tub, and an exclusive garden displaying an array of local wildflowers.
Users can query the database to find available rooms of different types, such as deluxe rooms including a view of the gardens, single rooms without a view, and an exclusive penthouse for high profile guests. Hotel management can also use the database to manage room availability and maintenance. Guest’s interaction with the hotel’s website will automatically update the system while exclusive events (such as weddings, birthdays, concerts, and business meetings) will be handled directly by hotel management.

### The hotel database will handle the following:

#### List of room
- Cleaned/Dirty
- Vacant/Non-Vacant
- Booking dates
- Normal/Deluxe
- One/two beds
- Penthouse

#### List of event rooms
- Conference Room 1
- Conference Room 2
- Wedding
- Amenities
- Pool
- Hours
- Hot Tub
- Hours
- Restaurant(Le Fleur/Garden Patio)
- Hours

### Requirements:
For our database to function properly and provide users with accurate and updated resort information, we expect the resort to have a working website where users will be able to book their own rooms or contact management to schedule event room reservations. Our requirements include an employee website for the resort to update room status and confirm event room bookings. We expect our resort to provide computers available to staff for walk-in bookings and scheduling as well.
