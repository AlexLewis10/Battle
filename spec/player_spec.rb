require 'player'

describe Player do
  let(:player) {Player.new("Alex")}
  it 'responds to name' do
    expect(player).to respond_to :name
  end

  it "name tells us the name of the player" do
    #player.name
    expect(player.name).to eq "Alex"
  end
end
