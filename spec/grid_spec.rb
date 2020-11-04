require_relative '../lib/classes'

describe Grid do
  
  let(:grids) { Grid.new }

  describe '#initialize' do
    context 'Checks if it is an instance of Grid' do

      it { expect(grids).to an_instance_of(Grid) }

      it { expect(grids).not_to an_instance_of(Integer) }

    end
  end
  
  describe '#display_grid' do
    display =
      "
      1 | 2 | 3
      -----------
      4 | 5 | 6
      -----------
      7 | 8 | 9
    "
    context 'Checks if the method displays a grid' do

      it { expect(grids.display_grid).to(satisfy { |value| value == display }) }

    end
  end

  describe '#assigning_marks' do

    context 'Checks if the method is assigning the right mark in the right position' do

      it { expect { grids.assigning_marks(5, 1) }.to change(grids, :grid).from(["1", "2", "3", "4", "5", "6", "7", "8", "9"]).to(["1", "2", "3", "4", "X", "6", "7", "8", "9"]) }
    
      it { expect { grids.assigning_marks(5, 2) }.to change(grids, :grid).from(["1", "2", "3", "4", "5", "6", "7", "8", "9"]).to(["1", "2", "3", "4", "O", "6", "7", "8", "9"]) }

    end
  end
end
