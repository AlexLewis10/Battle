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

  it 'responds to turn' do
    expect(subject).to respond_to :turn
  end

  it 'responds to switch' do
    expect(subject).to respond_to :switch
  end

  it 'switch changes turn' do
    expect{subject.switch}.to change{subject.turn}
  end

  it do
    subject.switch
    expect{subject.switch}.to change{subject.turn}
  end
end
