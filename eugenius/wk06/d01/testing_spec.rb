require 'rails_helper'

# Adding a Song to and Artist

feature "AddingASongToAnArtists", :type => :feature do
  scenario "valid input" do
    artist = Artist.create(
      first_name: "Miley",
      last_name: "Cyrus"
    )
    song = Song.create(
      name: "Wrecking Ball"
    )
    user = User.create(
      email: "info@example.com",
      password: "password",
      admin: true
    )
    
    log_in "info@example.com", "password"

    visit '/artists'

    click_link artist.full_name
    click_button "Add songs"
    fill "Search", with: song.name
    click_button "Search"

    check song.name
    click_button "Add to #{artist.full_name}"

    expect(page).to have_content(song.name)
  end
end

# Edit an Artist

feature "EditAnArtist", :type => :feature do
  scenario "valid input" do
    artist = Artist.create(
      first_name: "Snoop",
      last_name: "Dogg"
    )
    user = User.create(
      email: "info@example.com",
      password: "password",
      admin: true
    )
    
    log_in "info@example.com", "password"

    visit artist_path(artist)

    click_link 'edit'
    fill "first_name", with: "Snoop"
    fill "last_name", with: "Lion"    
    click_button "Update"

    expect(page).to have_content("Snoop Lion")
  end
end

# 1. Generate Artist Model with first name and last name
# 2. Generate User Model with email password and admin true
# 3. Log in to the app as admin user
# 4. Go to the artist url for the artist you just generated
# 5. Click on the link 'Edit' to take you to a form that edits the Artist
# 6. Fill in first name and last name fields with updated first name and last name
# 7. Once done click Update to submit your changes.
# 8. Expect the page to have the updated Artist's name.

