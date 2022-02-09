def sign_in_and_play
  visit("/")
  fill_in :player_name_1, with: "Haroon the Invincible"
  fill_in :player_name_2, with: "Bromley the Great"
  click_button "Enter Gladiators"
end