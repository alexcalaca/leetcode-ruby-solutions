require_relative '../lib/contains_duplicate_217_leetcode'
require 'rspec'

describe ContainsDuplicate217Leetcode do    

  describe '#contains_duplicate' do
    let(:klass) { ContainsDuplicate217Leetcode.new }
    
    context 'when array contains duplicate' do
      it 'returns true' do
        numbers = [1,2,3,1]
        expect(klass.contains_duplicate(numbers)).to be(true)
      end      
    end
  
    context 'when array does not contain duplicate' do
      it 'returns false' do
        numbers = [1, 2, 3, 4]
        expect(klass.contains_duplicate(numbers)).to be(false)
      end      
    end
  end
end



