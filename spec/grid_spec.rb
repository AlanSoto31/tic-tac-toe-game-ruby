# rubocop:disable Layout/LineLength

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
      it { expect { grids.assigning_marks(5, 1) }.to change(grids, :grid).from(%w[1 2 3 4 5 6 7 8 9]).to(%w[1 2 3 4 X 6 7 8 9]) }

      it { expect { grids.assigning_marks(5, 2) }.to change(grids, :grid).from(%w[1 2 3 4 5 6 7 8 9]).to(%w[1 2 3 4 O 6 7 8 9]) }
    end
  end

  describe '#position_chosen' do
    before { grids.assigning_marks(4, 1) }

    context 'Checks if the position chosen is available' do
      it { expect(grids.position_chosen(5)).to be_equal(true) }

      it { expect(grids.position_chosen(4)).not_to be_equal(true) }
    end
  end

  describe '#draw' do
    let(:grids_empty) { Grid.new }

    before do
      i = 1
      while i <= grids.grid.length
        grids.assigning_marks(i, 1)
        i += 1
      end
    end

    context 'Checks if the grid is full of marks (draw game)' do
      it { expect(grids.draw).to be_equal(true) }

      it { expect(grids_empty.draw).to be_equal(false) }
    end
  end
end

# rubocop:enable Layout/LineLength
