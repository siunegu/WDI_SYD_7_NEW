require 'rails_helper'

feature "ReaderListsPosts", :type => :feature do
	scenario "there is no blog posts" do
		visit '/'
		expect(page).to have_content("No blog posts found")
	end

	scenario "one blog post" do
		Post.create(
			title: "Hello World",
			author: "Jane Burken",
			content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
Labore reprehenderit doloribus hic itaque cupiditate unde est doloremque." 
		)
		visit '/'
		expect(page).to have_content("Hello World")
		expect(page).to have_content("Jane Burken")
		expect(page).to have_content("Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
Labore reprehenderit doloribus hic itaque cupiditate unde est doloremque.")
		expect(page).not_to have_content("No blog posts found")
	end

	scenario "multiple blog posts in system" do
		(0..3).each do |n|
			Post.create(
				title: "Hello World #{n}",
				author: "Jane Burken the #{n}",
				content: "Lorem ipsum #{n} dolor sit amet, consectetur adipisicing elit. 
	Labore reprehenderit doloribus hic itaque cupiditate unde est doloremque." 
			)
		end

		visit '/'

		(0..3).each do |n|
			expect(page).to have_content("Hello World #{n}")
			expect(page).to have_content("Jane Burken the #{n}")
			expect(page).to have_content("Lorem ipsum #{n} dolor sit amet, consectetur adipisicing elit. 
	Labore reprehenderit doloribus hic itaque cupiditate unde est doloremque.")		
			expect(page).not_to have_content("No blog posts found")	
		end
	end
end
