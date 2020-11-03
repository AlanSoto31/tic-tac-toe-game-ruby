require_relative '../lib/classes.rb'

describe Players do

    describe "#check_answer" do
        let(:player) { Players.new }

        context "Returns true if the user wants to play" do
            it  { expect(player.check_answer('Y')).to be_equal(true) }
            it  { expect(player.check_answer('N')).not_to be_equal(true) }
        end
    end
end