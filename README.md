## Practice login service on rails

- rails g controller user
1. routes
2. controller
3. view

- rails g model user
  - email
  - password
  - rake db:migrate
  
- Signup
  - user/index
  - user/new
  - user/create
  - user/modify/:id
  - user/update
  - user/destroy/:id
 
- Practice rails_db gem

- MD5 
require 'digest' in irb
Digest::MD5.hexdigest('1234')

- 'rake db:drop' to recreate model with Encryption password

- session / cookies
  - add login process to check email/password