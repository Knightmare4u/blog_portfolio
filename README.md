# README

# Planning application

Answer Questions
What are we building?
WHo are we building it for? 
What features do de need to have?
User Stories
Model our Data
Think through the pages we need in our app

# Questions

What are we building? We are building a personal site. A place where we can blog, share examples of our work, and have people contact us.
Who are we building it for? We are building it for ourselves, but also the community. Sharing what we are learning by blogging is a great way to learn for ourselves, but we teach others in the process. Show potential employers that we know what we’re talking about.
What features do we need to have?
Posts
Create / Edit / Destroy
Markdown
Syntax highlighting 
Comments (Disqus)
Project
Create / Edit / Destroy
Contact
Contact Form
Sendgrid
User (Devise)

# User Stories
	As a blank, I want to be able to blank, so that blank. 
- As a user, I want to be able to create posts so I can share what I’m learning.
As a user, I want to be able to edit and destroy posts, so that I can manage my blog. 
As a user, I want to be able to write posts in markdown format so thay it’s easy for me to write posts. 
As a user, I want to be able to highlight the various syntax of code blocks that I share on my blog. 
As a user, I want to shw the visitors and potential employers examples of my work, or stuff I’ve built. 
- As a user, I want to be able to have visitors contact me throught the website.


# Modeling our Data
	==Post==
		title:string
		content:string
	==Project==
		title:string
		description:text
		link:string
	==User==

## Think through the pages we need in our app

Home
Posts#Index
Posts#Show
Projects#Index
Projects#Show
Contact
