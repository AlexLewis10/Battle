require 'game'

describe Game do
  let(:subject) {Game.new(player1,player2)}
  let(:player1) { double :player }
  let(:player2) { double :player }
  it 'responds to attack' do
    expect(subject).to respond_to(:attack).with(1).argument
  end

  it "attack instructs the player to take damage" do
    expect(player1).to receive :take_damage
    subject.attack(player1)
  end

  it 'responds to player one' do
    expect(subject).to respond_to(:player_one)
  end
  it 'responds to player two' do
    expect(subject).to respond_to(:player_two)
  end
end
