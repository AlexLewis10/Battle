feature "Attacking" do
  scenario "player one should be able to attack player 2" do
    sign_in_and_play
    expect(page).to have_button('Attack Player 2')
  end
  scenario "attacking player 2 should confirm the hit" do
    sign_in_and_play
    click_button('Attack Player 2')
    expect(page).to have_content('Mittens takes 10 points of damage')
  end
end