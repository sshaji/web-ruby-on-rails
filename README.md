## web-ruby-on-rails
### Ruby on Rails web application sample

#### MySql Database details :
##### Database name : rails_offers

* Table : users
 - username (varchar - 60 - primary)
 - password (varchar - 60)
 - enabled (tinyint - 1)
 - firstname (varchar - 60)
 - lastname (varchar - 60)
 - email (varchar - 60)
 
* Table : offers
 - id (int - primary - auto increment)
 - user_username (varchar - 60 - foreign key to users.username)
 - offerdetails (text)
