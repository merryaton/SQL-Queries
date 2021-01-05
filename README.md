# SQL-DATA-QUERIES
SQL DATA QUERIES
# SQL SAMPLE DATABASE
This database talks about the lists of customer's orders including their basic information to use on identifying a person. This records serves an evidence that a customer ordered products with it's specific quantity, price and total price, and where they are located. The importance of having database is to organize and easily trace the information. I also seen that big companies like logistics company; J&T are using database to store their information from time to time and check items according to the what they encoded on the database.
# Database Table

Table1- Customer's Information

Table2- Customer's Order

# SQL Queiries
1.Selecting all information under 'customer' Table from ORnum 1425

SELECT * FROM customer WHERE ORnum>1425;

![1](https://user-images.githubusercontent.com/73306480/103623898-bc110f00-4f73-11eb-994b-e493d28f8a3c.png)

2. Showing infomation of ORnum and Total under 'Myorders' Table when the Product is '3D Foam Bricks Wallpaper'
SELECT ORnum, Total FROM `myorders` WHERE Product= '3D Foam Bricks Wallpaper';

![2](https://user-images.githubusercontent.com/73306480/103624283-46f20980-4f74-11eb-9129-1fc3aca690b8.png)

3. Merging all informations on Table 1 and Table 2
SELECT t.ORnum, t.Name, t.Address, t.ContactNo, ti.Product, ti.Quantity, ti.Total FROM customer AS t, myorders AS ti WHERE t.ORnum=ti.ORnum1;

![3](https://user-images.githubusercontent.com/73306480/103624308-4d808100-4f74-11eb-912f-71b9047ed691.png)

4.Ascending order based on the Quantity of the Products
SELECT * FROM myorders ORDER BY Quantity ASC;

![4](https://user-images.githubusercontent.com/73306480/103624335-55402580-4f74-11eb-9894-e16545c4d2e4.png)

5. 

