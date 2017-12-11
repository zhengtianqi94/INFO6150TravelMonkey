# TravelMonkey

Travel Monkey Server side implementation with sample test pages.

The Server side is developed by IntellJ, using Spring MVC + Hibernate + Maven.
Sample test pages using JSP + JQuery + AJAX, the data set used to communicate between front and server is JSON.

Server side Rest APIs are implemented, sample database dump file is provided.
Relationship between entities:  
user -> post: one to many (UID as foreign key in Post)  
post -> user file: one to many (PostID as foreign key in UserFile)

## Entity.User, Controller.UserCon
User Controller provides Get by ID(GET), Get all(GET), Add(POST), Update(PUT), Delete{DELETE), addPost(PUT) APIs, returns a JSON Object with generated JSON structure.  
Most user specify fields are written in hardcode.

## Entity.Post, Controller.PostCon
Post Controller provides Get by ID(GET), Get all(GET), Update(PUT), Delete(DELETE), addFile(PUT) APIs, returns a JSON Object with generated JSON structure.  
Most user specify fields are written in hardcode.

## Entity.UserFile, Controller.FileCon
File Controller provides Get by ID(GET), Get all(GET), Update(PUT), Delete(DELETE), Upload(POST) APIs, returns a JSON Object with generated JSON structure.  
Most user specify fields are written in hardcode.  

## v1.2.0
File upload implemented & tested.  
New sample database fump file uploaded, with sample file path.  
File upload has delay when trying to display on the page.  
Need to fix the upload progress listening.  

## v1.1.0
One-to-many relationship implemented & tested.  
Cascade add/update/delete implemented & tested.  
Single file upload implemented & tested.  
Different file upload need to be implemented. Logic change needed on file.jsp.  

## v1.0.1
Fix bugs on delete.  
Add console.log information of exception cause message.  
Test on one-to-one relationship complete.  
Prepare for iteration to one-to-many relationship.  

## v1.0.0
Implementation of whole strcture.  
Set test text for each entity.  
