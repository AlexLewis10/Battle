require 'game'

describe Game do
  let(:player) { double :player }
  it 'responds to attack' do
    expect(subject).to respond_to(:attack).with(1).argument
  end

  it "attack instructs the player to take damage" do
    expect(player).to receive :take_damage
    subject.attack(player)
  end
end
