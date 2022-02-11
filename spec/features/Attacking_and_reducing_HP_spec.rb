# require 'web_helpers'
require './lib/player'

feature "player 1 attacks player 2 and reduces HP" do
    scenario "player 1 attacks player 2 and reduces HP" do
      sign_in_and_play
      click_button "Attack Player 2"
      expect(page).to have_content 'Bromley has 50HP'
    end
  end