require 'player'

describe Player do
  let(:player) {Player.new}
  it 'responds to name' do
  expect(player).to respond_to :name
  end
end
