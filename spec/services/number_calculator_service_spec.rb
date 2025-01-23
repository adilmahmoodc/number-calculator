require 'rails_helper'

RSpec.describe NumberCalculatorService do
  describe '.total_inc_dec' do
    it 'returns 1 for x = 0' do
      expect(NumberCalculatorService.total_inc_dec(0)).to eq(1)
    end

    it 'returns 10 for x = 1' do
      expect(NumberCalculatorService.total_inc_dec(1)).to eq(10)
    end

    it 'returns 100 for x = 2' do
      expect(NumberCalculatorService.total_inc_dec(2)).to eq(100)
    end

    it 'returns 475 for x = 3' do
      expect(NumberCalculatorService.total_inc_dec(3)).to eq(475)
    end

    it 'returns 1675 for x = 4' do
      expect(NumberCalculatorService.total_inc_dec(4)).to eq(1675)
    end

    it 'returns 4954 for x = 5' do
      expect(NumberCalculatorService.total_inc_dec(5)).to eq(4954)
    end

    it 'returns 12952 for x = 6' do
      expect(NumberCalculatorService.total_inc_dec(6)).to eq(12952)
    end

    it 'correctly calculates increasing and decreasing numbers for x = 3' do
      increasing_numbers = (101..200).select { |num| num.digits.reverse == num.digits.reverse.sort }
      decreasing_numbers = (101..200).select { |num| num.digits.reverse == num.digits.reverse.sort.reverse }
      expect(increasing_numbers).to include(112, 123, 134, 145, 156, 167, 178, 189)
      expect(decreasing_numbers).to include(200)
    end
  end
end