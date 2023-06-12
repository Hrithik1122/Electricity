# Electricity

Create a new Laravel application called “Electricity”, Make a CRUD (add, edit , delete) of customers (data : name, address, email, mobile, city). Create also a panel to generate electricity bill in which  user selects customer, month and takes no. of units consumed as input and calculate bill on behalf of following slabs : 

1 – 50 units : 5 rs/ unit <br>
51-100 units : 8 rs/ unit <br>
101-250 units : 12rs/unit <br>
250-unlimited : 15 rs/unit <br>
<br>
You can also understand this as First fifty units is charged as 5 rs/unit, next 50units is charged as 8 rs/unit, next 150 units is charged as 12 rs/ units and rest will be charged as 15 rs/unit.

If  a user inputs 375 units,<br>
	Bill amount : (50*5)+(50*8)+(150*12)+(125*15) = Rs. 4325 
<br><br>
If a user inputs 501 units, <br>
	Bill Amount : (50*5)+(50*8)+(150*12)+(251*15) = Rs. 6215
<br>
and store this amount in another table called user_bills, store user_id, month and amount in that.

#### Fetch all the data stored in users bill in a new panel called “Users Bill” with the pagination of 10, Display name of user instead of User ID.

## Preview

![Screenshot 2023-06-12 at 1 15 21 PM](https://github.com/Hrithik1122/Electricity/assets/94792977/e68033a7-7f62-4aea-bd88-656b94b8081f)

![Screenshot 2023-06-12 at 1 15 31 PM](https://github.com/Hrithik1122/Electricity/assets/94792977/cfebb6e2-5f9a-43fb-a489-14ae6da3f44a)

![Screenshot 2023-06-12 at 1 17 30 PM](https://github.com/Hrithik1122/Electricity/assets/94792977/7f6a50c7-0bc0-444b-b5eb-8c68e73d009c)

![Screenshot 2023-06-12 at 1 15 57 PM](https://github.com/Hrithik1122/Electricity/assets/94792977/06480f66-5596-43fb-8823-03025cc5072d)


# Steps to Run the application on local system

1. Clone this repository in your local system.
2. To download the <b>node_modules</b> and <b>vendor</b> folders in a Laravel application, you can use the following steps: <br>
• Open your command-line interface (CLI) or terminal. <br>
• Navigate to the root directory of your Laravel application. <br>
• `npm install` and `composer install` <br>

3. Run this command `php artisan serve` to start the server.
4. Start the application from `http://127.0.0.1:8000/customers` using local server.
5. To see the all the user bill data go to `http://127.0.0.1:8000/user-bills` using local server.


--- 
<h3 align='center'>Hope you like this application :)</h3>
<h4 align='center'>Show some ❤️ by giving ⭐ to this repository !!</h4>
