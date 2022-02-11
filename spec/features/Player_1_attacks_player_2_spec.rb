# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "player 1 attacks player 2" do
    scenario "player 1 attacks player 2" do
      sign_in_and_play
      click_button "Attack Player 2"
      expect(page).to have_content 'Haroon attacks Bromley'
    end
  end