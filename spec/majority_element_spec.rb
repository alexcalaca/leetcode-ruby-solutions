require_relative "../lib/majority_element"
require 'rspec'

RSpec.describe 'majority_element' do
  subject { majority_element(nums) }

  context 'when the array nums is sorted' do
    let(:nums) {[1, 2, 2, 2, 3, 4]}

    it 'returns the majority element' do
      is_expected.to eq(2)
    end
  end

  context 'when the array nums is unsorted' do
    let(:nums) {[2, 2, 1, 2, 4, 3]}

    it 'returns the majority element' do
      expect(subject).to eq(2)
    end    
  end

  context 'when the array nums is made of negative numbers' do
    let(:nums) {[-2, -9, -2, -1, -2, -3]}

    it 'returns the majority element' do
      expect(subject).to eq(-2)
    end    
  end    
end
