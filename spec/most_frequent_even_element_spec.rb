require_relative "../lib/most_frequent_even_element"
require 'rspec'

RSpec.describe 'most_frequent_even_element' do
  subject { most_frequent_even(nums) }  

  context 'when the input array is empty' do
    let(:nums) {[]}

    it 'returns the number -1' do
      is_expected.to eq(-1)
    end
  end

  context 'when the input array has no even elements' do
    let(:nums) {[1, 9, 3, 3, 7, 5, 5]}

    it 'returns -1' do
      expect(subject).to eq(-1)
    end
    
  end

  context 'when the input array contains even elements' do
    context 'when there is only one even element' do
      let(:nums) {[8, 9, 3, 3, 7, 5, 5]}

      it 'returns the only one even element' do
        expect(subject).to eq(8)
      end
    end

    context 'when there are over two even elements' do
      let(:nums) {[4, 2, 2, 3, 7, 4, 4]}

      it 'returns the most frequent' do
        expect(subject).to eq(4)
      end
    end

    context 'when there is a tie' do
      let(:nums) {[4, 2, 2, 3, 2, 4, 4]}

      it 'returns the smallest' do
        expect(subject).to eq(2)
      end
    end    
  end
end