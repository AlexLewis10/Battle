require 'game'

describe Game do
  it 'responds to attack' do
    expect(subject).to respond_to(:attack).with(1).argument
  end
end
