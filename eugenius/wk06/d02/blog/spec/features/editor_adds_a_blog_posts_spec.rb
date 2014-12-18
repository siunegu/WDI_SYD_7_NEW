require 'rails_helper'

feature "EditorAddsABlogPosts", :type => :feature do
	scenario "valid input" do
		Post.create(
		title: "Hello World",
		author: "Jane Burken",
		content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
Labore reprehenderit doloribus hic itaque cupiditate unde est doloremque." 
		)
		visit '/'
		click_link('Add Post')		
		fill_in('Title', with: 'Hello World')
	end	
end
