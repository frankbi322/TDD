require 'towers'
require 'rspec'

describe Towers do
  let(:game) { Towers.new }

  describe '#initialize' do

    it 'puts all towers on first tower (tower 0)' do
      expect(game.towers).to eq([[3,2,1],[],[]])
    end

  end


  describe '#move' do

    it 'makes a valid move' do
      game.move(0,1)
      expect(game.towers).to eq([[3,2],[1],[]])
    end

    #before:
    it 'should return an error' do
      expect{game.move(2,1)}.to raise_error("Invalid Move")
    end


    context 'when putting a bigger piece on a smaller piece'

    it 'should raise an error if a move tries to move a bigger piece onto a smaller piece' do
      game.move(0,1)
      expect{game.move(0,1)}.to raise_error("Invalid Move")
    end

  end

  describe '#won?' do
    before(:each) do
      game.towers = [[],[3,2,1],[]]
    end
    context 'when towers are in winning state' do
      it "returns when all pieces are on tower 1" do
        expect(game.won?).to be true
      end
    end

    subject(:not_winning) {Towers.new}
    context 'when towers are not in winning state' do
        it 'returns false when towers are not in winning state' do
            not_winning.towers = [[1],[2],[3]]
            expect(not_winning.won?).to be_falsey
        end
    end

  end

end
