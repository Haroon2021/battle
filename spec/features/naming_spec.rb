# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature "entering player names" do
  scenario "submit names" do
    sign_in_and_play
    expect(page).to have_content 'Haroon vs Bromley'
  end
end

# You can use a symbol to represent a string - notably when the string
# you are repesenting never changes
# :player_name_1 == "player_name_1"