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

4. Organizing the Order list in Ascending order based on the Quantity of the Products
SELECT * FROM myorders ORDER BY Quantity ASC;

![4](https://user-images.githubusercontent.com/73306480/103624335-55402580-4f74-11eb-9894-e16545c4d2e4.png)

5. Changing or Updating Customer's Information or setting to another customer
UPDATE customer SET Name='Kayla Hermosa', Address='Davao City', ContactNo='9435214562' WHERE ORnum = 1408;

![5](https://user-images.githubusercontent.com/73306480/103627145-27f57680-4f78-11eb-8c6d-a6dbd7726f97.png)

6. Selecting on Customer's Information who are located only at Davao City
Select * FROM customer WHERE Address = 'Davao City';

![6](https://user-images.githubusercontent.com/73306480/103627586-ceda1280-4f78-11eb-88b2-dc4879a71123.png)

7. Selecting all information under customer's Table excluding ORnum: '1405', '1406', '1410', '1412', '1415', '1420','1421', '1422','1423'
SELECT * FROM `customer` WHERE ORnum NOT IN('1405', '1406', '1410', '1412', '1415', '1420','1421', '1422','1423');

![7](https://user-images.githubusercontent.com/73306480/103627623-dac5d480-4f78-11eb-8e02-0964818f4c46.png)

8. Selecting all information where Total' column is greater than 1000, order by descending
SELECT * FROM myorders WHERE Total > 1000 ORDER by Total DESC;

![8](https://user-images.githubusercontent.com/73306480/103627656-e3b6a600-4f78-11eb-8d1a-45121f054480.png)

9. Sum of all Total prices in results to the total profit
SELECT Sum(Total) AS TotalProfit FROM myorders;

![9](https://user-images.githubusercontent.com/73306480/103627670-e87b5a00-4f78-11eb-93ae-65dcb424414f.png)

