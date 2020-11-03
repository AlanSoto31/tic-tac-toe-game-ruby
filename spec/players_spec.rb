require_relative '../lib/classes.rb'

describe Players do
    let(:player) { Players.new }

    describe "#check_answer" do
    
        context "Returns true if the user wants to play" do
            it  { expect(player.check_answer('Y')).to be_equal(true) }

            it  { expect(player.check_answer('N')).not_to be_equal(true) }

        end

    end

    describe '#check_input' do
        
        context 'Checks if the input is between 1 and 9' do
            it { expect(player.check_input(1)).to be_equal(true)}

            it { expect(player.check_input(10)).not_to be_equal(true)}

            it { expect(player.check_input('a')).not_to be_equal(true)}

        end
    end

end