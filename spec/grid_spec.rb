require_relative '../lib/classes.rb'

describe Grid do
    let(:grid) { Grid.new }

    describe '#initialize' do
        
        context 'Checks if it is an instance of Grid' do
            it { expect(grid).to an_instance_of(Grid) }
            it { expect(grid).not_to an_instance_of(Integer) }
        end
    end
end