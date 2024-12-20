require 'pry'
require 'rspec'
require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'

RSpec.describe Game do
    describe '#gamesetup' do
        it 'exists' do
            game1 = Game.new("Tom")
            expect(game1).to be_a(Game)
        end

        it 'has attributes' do
            game1 = Game.new("Tom")
            expect(game1.player1).to eq("Tom")
            expect(game1.computer_player).to eq("Computer")
        end
    end

    # describe '#game play' do
    #     it "game starts" do
    #         game1 = Game.new("Tom")
    #         expect(game1.start).to output("Welcome to BATTLESHIP /n Enter p to play. Enter q to quit.")
    #     end
    # end

    describe 'computer placements' do
        it 'computer places ships' do
            game1 = Game.new("Tom")

            expect(game1.computer_place_ships).to eq("I have laid out my ships on the grid. \n" + 
            "You now need to lay out your two ships. \n" +
            "The Cruiser is three units long and the Submarine is two units long. \n" +
            "  1 2 3 4 \n" +
                "A . . . . \n" +
                "B . . . . \n" +
                "C . . . . \n" +
                "D . . . . \n" +
            "Enter the squares for the Cruiser (3 spaces): ")
        end
    end

    describe 'player placements' do
        it 'player places ships' do
            game1 = Game.new("Tom")

            expect(game1.player_places_cruiser).to eq("I have laid out my ships on the grid. \n" + 
            "You now need to lay out your two ships. \n" +
            "The Cruiser is three units long and the Submarine is two units long. \n" +
            "  1 2 3 4 \n" +
                "A . . . . \n" +
                "B . . . . \n" +
                "C . . . . \n" +
                "D . . . . \n" +
            "Enter the squares for the Cruiser (3 spaces): ")
        end
    end





    #         #test to confirm


    #         #now we need to test that the computer did place ships by looking at the board

            


    #         # expect(game1.computer_place_ship).to eq()
    #     end
    # end

    
end