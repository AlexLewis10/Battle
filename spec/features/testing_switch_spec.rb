feature "We want to take turns" do
  scenario "player 1 can't attack twice in a row" do
    sign_in_and_play()
    click_button("Attack Player 2")
    click_button("back to the battle!")
    expect(page).to_not have_button "Attack Player 2"
  end
end
