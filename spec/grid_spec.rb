require_relative '../lib/classes'

describe Grid do
  let(:grid) { Grid.new }
  describe '#initialize' do
    context 'Checks if it is an instance of Grid' do
      it { expect(grid).to an_instance_of(Grid) }
      it { expect(grid).not_to an_instance_of(Integer) }
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
      it { expect(grid.display_grid).to(satisfy { |value| value == display }) }
    end
  end
end
