require 'player'

describe Player do
    
    subject(:haroon) { Player.new('haroon')}
    describe 'name' do
      it 'will return name' do
        expect(haroon.name).to eq 'haroon'
      end
    end
end