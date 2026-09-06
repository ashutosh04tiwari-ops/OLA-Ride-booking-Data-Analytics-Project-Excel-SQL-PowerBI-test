Create Database Ola;
Use Ola;

#1. Retrieve all successful bookings:
Create View Successful_Bookings AS
SELECT * FROM bookings
WHERE Booking_Status = 'Success';
#1. Retrieve all successful bookings:
SELECT * FROM Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Create View ride_distance_for_each_vehicle AS
SELECT Vehicle_Type, AVG ( Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type;
#2. Find the average ride distance for each vehicle type:
SELECT *FROM ride_distance_for_each_vehicle;

#3. Get the total number of canceled rides by customers:
Create view canceled_rides_by_customers AS
SELECT COUNT(*)  from bookings
 WHERE Booking_status = 'Canceled by Customer';
 #3. Get the total number of canceled rides by customers:
 SELECT * FROM canceled_rides_by_customers;
 
 #4. List the top 5 customers who booked the highest number of rides:
 create view Top_5_Customers As
  SELECT Customer_ID, COUNT(Booking_ID) as total_rides
  from bookings
  group by Customer_ID
  order by total_rides desc limit 5;
  
   select * from Top_5_Customers;
   
   #5. Get the number of rides canceles by driver dus to personal and car-related issuses:
  Create view Rides_Canceled_by_Drivers_P_C_Issues AS
  SELECT COUNT(*) FROM Bookings
   WHERE Canceled_rides_by_driver = 'Personal & Car related issue';
   
   SELECT * FROM  Rides_Canceled_by_Drivers_P_C_Issues;
   
   #6. Find the maximum driver rating for Prime Sedan bookings:
   Create view MAX_MIN_Driver_Rating As
   SELECT MAX(Driver_Ratings) as max_rating,
   MIN(Driver_Ratings) as min_rating
   FROM bookings WHERE Vehicle_Type = 'Prime Sedan';
   
   SELECT * FROM MAX_MIN_Driver_rating;
   
   #7. Retrive all rides where payment was made using UPI:
   Create View UPI_Payment As
   SELECT * FROM bookings
    WHERE Payment_Method = 'UPI';
    
    SELECT * FROM UPI_Payment;
  
  #8. Find the average customer rating per vehicle type:
 Create View AVG_Cust_Rating As
 SELECT Vehicle_type, AVG(Customer_Rating) as avg_customer_rating
  FROM bookings
  group by Vehicle_Type;
  
   SELECT *FROM AVG_Cust_Rating;
  
  #9. Calculate the total booking value of rides completed successfully:
  Create View total_successful_ride_value As
  SELECT SUM(Booking_Value) as toatal_successful_ride_value
   FROM bookings
   WHERE Booking_Status = 'Success';
   
 SELECT * FROM total_successful_ride_value;
 
 #10. List all incomplete rides along with the reason:
   Create View Incomplete_Rides_Reason As
   SELECT Booking_ID, Incomplete_Rides_Reason
   FROM bookings
   WHERE Incomplete_Rides = 'Yes';
   
   SELECT * FROM Incomplete_rides_Reason;
   
   
   #1. Retrieve all successful bookings:
   SELECT * FROM Successful_Bookings;
   
   #2. Find the average ride distance for each vehicle type:
   SELECT *FROM ride_distance_for_each_vehicle;
   
   #3. Get the total number of canceled rides by customers:
    SELECT * FROM canceled_rides_by_customers;
    
    #4. List the top 5 customers who booked the highest number of rides:
     select * from Top_5_Customers;
     
      #5. Get the number of rides canceles by driver dus to personal and car-related issuses:
      SELECT * FROM  Rides_Canceled_by_Drivers_P_C_Issues;
      
	#6. Find the maximum driver rating for Prime Sedan bookings:
	SELECT * FROM MAX_MIN_Driver_rating;
          
	#7. Retrive all rides where payment was made using UPI:
      SELECT * FROM UPI_Payment;       
  
  #8. Find the average customer rating per vehicle type:
 SELECT *FROM AVG_Cust_Rating;  
      
      
  #9. Calculate the total booking value of rides completed successfully:
   SELECT * FROM total_successful_ride_value;
   
    #10. List all incomplete rides along with the reason:
     SELECT * FROM Incomplete_rides_Reason;