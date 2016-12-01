
require "rails_helper"

RSpec.feature "School management", :type => :feature do

scenario "A user visit the school index page and click on Add detail Button " do
	
visit schools_path
click_link "New School"
# click_button "New School"
expect(current_path).to eql(new_school_path)
fill_in "school[schoolname]", with: "phari"
fill_in "school[address]", with: "1,Gandhi st"
fill_in "school[city]", with: "Chennai"
fill_in "school[state]", with: "TamilNadu"
fill_in "school[pincode]", with: "600042"
find(:xpath,'//*[@id="school_board_cbse"]').click

# choose('A Radio Button')
# fill_in "school[board]", with: "cbse"
# expect(page).to have_text("School was successfully created.")
expect(page).to have_button("Create School")
 click_button "Create School"
 # expect(page).to have_text("School was successfully created.")
p
click_link "Back"
expect(current_path).to eql(schools_path)
click_link "Edit"
fill_in "school[schoolname]", with: "phari"
fill_in "school[address]", with: "1,Gandhi st"
fill_in "school[city]", with: "Chennai"
fill_in "school[state]", with: "TamilNadu"
fill_in "school[pincode]", with: "600043"
find(:xpath,'//*[@id="school_board_matric"]').click
expect(page).to have_button("Update School")
click_button "Update School"
expect(page).to have_text("Chennai")
p

end

end