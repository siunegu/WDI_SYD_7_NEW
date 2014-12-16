require 'rails_helper'

feature "ReaderListsPosts", :type => :feature do
	scenario "there is no blog posts" do
		visit '/'
	end
end
