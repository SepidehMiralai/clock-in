* How did you approach this challenge?
1) I specified all necessary usecases and actors in my app.
  Usecases included the following:
    - sign in/ sign up/ sign out for all users
    - Clock In/Clock Out for all users
    - View time logged for all users
    - Edit/Delete time logged only for admins
    - Search users time logged based on the users first name or last name , only for admins
 2) I specified the actors:
    - normal user
    - admin
 3) I specified database tables , their fields and their relationship.
  
 4) I sketched the design of the app on paper.
 
 * What schema design did you choose and why?
    - I used a schema design including a users table and a clock_events table, because we need the users to sign in first and then create clock in/clock out event. So      we need these tables with one to many relationship, meaning that each user has many clock events.
    - The users table include first name, last name, email, paassword and admin field to show if the user is admin or not.
    - The clock_events table including time_logged field to show the time and clock_in boolean field to specify clock in or clock out
  
 * If you were given another day to work on this, how would you spend it? What if you were given a month?
    - If I was given one more day, I would work more on the front end part and add more features like pagination. Also I would add test cases for models and controllers.
    - If I was given a month, I would improve the layouts and front end part, probably switching to using react. I also try to add more tables to it including the children education centers. 
  

* Deployment instructions:
 This app is deployed on heroku with this link: https://sepid-clock-in.herokuapp.com/clock_events

* ...
