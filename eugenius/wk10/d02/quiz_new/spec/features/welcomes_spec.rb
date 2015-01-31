require 'rails_helper'
#  _______  _______  _______  __   __  _     _  __   __  _______  ______
# |       ||   _   ||       ||  | |  || | _ | ||  | |  ||   _   ||      |
# |       ||  |_|  ||    _  ||  |_|  || || || ||  |_|  ||  |_|  ||___   |
# |       ||       ||   |_| ||       ||       ||       ||       |  __|  |
# |      _||       ||    ___||_     _||       ||       ||       | |_____|
# |     |_ |   _   ||   |      |   |  |   _   ||   _   ||   _   |   __
# |_______||__| |__||___|      |___|  |__| |__||__| |__||__| |__|  |__|
# http://jnicklas.github.io/capybara/
# (\~---.
#  /   (\-`-/)
# (      ' ' )          # https://learn.thoughtbot.com/test-driven-rails-resources/capybara.pdf
#  \ (  \_Y_/\          # https://gist.github.com/zhengjia/428105
#   ""\ \___//
#      `w   "
describe "The Quiz" do

  it "has a link to take us to the Sorting Quiz" do
    visit '/'
    click_link "sorting quiz"
    expect(page).to have_content "Sorting Quiz"
    expect(current_path).to eq('/quiz')
  end

  describe "when i click the 'sort' button", js: true do
    before(:each) do
      visit '/quiz'
      within("#quiz") { fill_in 'numbers', with: "-1, 4, 2, 8, 1, 20" }
      click_button "sort"
    end

    it "removes the input" do
      expect(page.has_no_field? 'numbers').to be true
      expect(page.has_no_button? 'sort').to be true
    end

    it "displays the numbers in ascending order" do
      expect(page).to have_content "-1, 1, 2, 4, 8, 20"
    end

  end

end

# More tests!

# In order to incorporate some Ruby and Ajax...
# Given that you've completed all the above
# If you add another button called "Random Ajax Numbers"
# And if you enter a number into the input numbers field
# When you click on "Random Ajax Numbers"
# Then you should make an ajax call to your server
# And receive back a random array of numbers
# And the length of that array should be equal to the number you entered in the input field
# And those numbers should appear in the numbers input field