# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t1 = TrackedPage.create(page: "www.page1.com")
t2 = TrackedPage.create(page: "www.page2.com")
t3 = TrackedPage.create(page: "www.page3.com")

p1 = Post.create(content: "Post 1 content", fb_id: "fb id 1")
p2 = Post.create(content: "Post 2 content", fb_id: "fb id 2")
p3 = Post.create(content: "Post 3 content", fb_id: "fb id 3")


p11 = Post.create(content: "Post 11 content", fb_id: "fb id 11")
p22 = Post.create(content: "Post 22 content", fb_id: "fb id 22")
p33 = Post.create(content: "Post 33 content", fb_id: "fb id 33")


p111 = Post.create(content: "Post 111 content", fb_id: "fb id 111")
p222 = Post.create(content: "Post 222 content", fb_id: "fb id 222")
p333 = Post.create(content: "Post 333 content", fb_id: "fb id 333")

t1.posts << p1
t1.posts << p11 
t1.posts << p111 
t1.user_id = 1

t2.posts << p2 
t2.posts << p22 
t2.posts << p222 
t2.user_id = 1

t3.posts << p3 
t3.posts << p33  
t3.posts << p333 
t3.user_id = 1

t1.save 
t2.save 
t3.save 

