# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Math do
  describe '#add' do
    it 'adds two numbers' do
      expect(1 + 2).to eq(3)
    end
  end
  describe '#substract' do
    it 'adds two numbers' do
      expect(1 - 2).to eq(-1)
    end
  end
  describe '#multiply' do
    it 'adds two numbers' do
      expect(1 * 2).to eq(2)
    end
  end
  describe '#divide' do
    it 'adds two numbers' do
      expect(1 + 2).to eq(3)
    end
  end
end
