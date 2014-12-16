require 'rails_helper'

feature "ReaderListsPosts", :type => :feature do
	scenario "there is no blog posts" do
		visit '/'
		expect(page).to have_content("No blog posts found")
	end

	scenario "one blog post" do
		Post.create(
			title: "Hello World",
			author: "Jane Burken"
			content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
								Labore reprehenderit doloribus hic itaque cupiditate unde est doloremque." 
		)
		visit '/'
		expect(page).to have_content("Hello World")
		expect(page).to have_content("Jane Burken")
		expect(page).to have_content("Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
								Labore reprehenderit doloribus hic itaque cupiditate unde est doloremque.")
	end
end
