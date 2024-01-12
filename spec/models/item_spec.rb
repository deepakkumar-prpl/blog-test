# spec/models/item_spec.rb

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#calculate' do
    it 'returns the correct result' do
      item = Item.new
      expect(item.calculate).to eq(3)
    end
  end

  describe '#calculate2' do
    it 'returns the correct result' do
      item = Item.new
      expect(item.calculate2).to eq(3)
    end
  end

  describe '#calculate2' do
    it 'returns the correct result' do
      item = Item.new
      expect(item.calculate2).to eq(3)
    end
  end

  describe '#calculate2' do
    it 'returns the correct result' do
      item = Item.new
      expect(item.calculate2).to eq(3)
    end
  end

  describe '#calculate2' do
    it 'returns the correct result' do
      item = Item.new
      expect(item.calculate2).to eq(3)
    end
  end
end
