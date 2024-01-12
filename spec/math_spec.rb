require 'spec_helper'

RSpec.describe Math do
  describe '#add' do
    it 'adds two numbers' do
      expect(1 + 2).to eq(3)
    end
  end
end
