# Merge Game

## Description
The back-end of this merge game stores the board and their respective number tokens. The board and token share the board id as the key in a one-to-many relationship. The token saves the position of the token on the board along with the number value of the token. Within the application controller, both models of token and board have read and create capability. The token has full CRUD capability, create, read, update and delete. 

## Roadmap
Add users in a one-to-many relationship with board model and save username and password within the table. User model will have create, read and update capability. 