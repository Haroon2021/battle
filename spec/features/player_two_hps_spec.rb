# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'See player 2 HP' do
  scenario "Player 1  can see player 2 HP" do
    sign_in_and_play
    expect(page).to have_content 'Bromley the Great has 20HP'
  end

end