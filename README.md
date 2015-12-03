Rails Final Project
=============

**Title:** SafeSpace

**Team Members:** Kim Wang, Myra Xiong, Alexis Tran, Sabrina Shie

**Demo Link:** safespace.herokuapp.com 

**Idea:** SafeSpace is a site for users to discuss their experiences coping with stress, anxiety, depression, and on mental illnesses in general. Users are part of a community that can offer resources to each other in terms of motivational posts, links, and/or personal experiences. Other users can comment on posts, generating further discussion. 

**Models and Description:**
-----------------
User
- has many Comments and Posts
- has a name, email, password, avatar
- can only edit own posts

Comment
- has a commenter, text 
- belongs to a User and a Post

Post
- has text, a title
- belongs to a User
- has many Comments

**Features:**
--------------
- Users can log in
- Users can make posts
- Users can comment on posts
- Users can update their information (name, email, password, avatar)
- Users can delete their own comments and posts

**Division of Labor:**
----------------
Kim: Made Users, Comments, and Posts

Myra: Front-End Styling and Deployment to Heroku

Alexis:

Sabrina: Worked on Users, Comments, Posts and misc bugs


