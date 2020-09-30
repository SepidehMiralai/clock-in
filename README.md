* How did you approach this challenge?
1) I specified all necessary use cases and actors in my app.
  Use cases included the following:
    - sign in/ sign up/ sign out for User
    - Clock In/Clock Out for User
    - View time logged for User
    - Edit/Delete time logged for Admin
    - Search users time logged based on the users first name or last name , for Admin
 2) I specified the actors:
    - User
    - Admin
 3) I specified database tables , their fields and their relationship.
  
 4) I sketched the design of the app on paper.
 5) I started to code. This is the summary of major steps:
    - Scaffolded the ClockEvent model with time_logged and clock_in fields.
    - Generated User model using devise gem.
    - Declared the model association and added user_id field to clock_events table; also added more fields to users table including the first_name, last_name and admin fields.
    - Modified the view files to show the desired information and used bootstrap to improve the look of tables, forms, buttons and links.
    - Added contact and about pages.
    - Added the search feature to search the time logged of a specific user by his/her first name or last name.
 
 * What schema design did you choose and why?
    - I used a schema design including a users table and a clock_events table, because we want the users to sign in first and then create clock in/clock out events. So      we need these tables with one to many relationship, meaning that each user has many clock events.
    - The users table include first name, last name, email, password and admin field to show if the user is admin or not.
    - The clock_events table including time_logged field to show the date and time and clock_in boolean field to specify clock in or clock out
  
 * If you were given another day to work on this, how would you spend it? What if you were given a month?
    - If I was given one more day, I would work more on the front end part and add more features like pagination. Also I would add test cases for models and controllers.
    - If I was given a month, I would improve the layouts and front end part, probably switching to using react. Also I will add more tables to the back end part including daycare table so that multiple daycares can use the app on the cloud.
  

* Deployment instructions:
 This app is deployed on heroku with this link: https://sepid-clock-in.herokuapp.com/clock_events. 
 I created an admin user with the following sign in information. The admin field of the admin user is set to true.
  - email: sepid@test.com
  - password: 123456
 
