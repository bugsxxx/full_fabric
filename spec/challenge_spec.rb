require 'challenge'

include Challenge

RSpec.describe Challenge do
  describe 'find missing number in array' do
    let(:seq) { [4, 3, 6, 2, 1, 7] } 

    it 'should return the missing number - 5' do
      a = find_missing_number(seq)
      expect(a).to eq(5)
    end
  end

  describe 'find missing number in array - with 0 in initial seq' do
    let(:seq) { [4, 0, 3, 6, 0, 2, 1, 7] } 

    it 'should return the missing number - 5' do
      a = find_missing_number(seq)
      expect(a).to eq(5)
    end
  end

  describe 'find missing number in array in nth: 2 position' do
    let(:seq) { [4, 3, 6, 2, 1, 7, 9] } 
    let(:nth) { 2 } 

    it 'should return the missing number - 5' do
      a = find_missing_number(seq, nth)

      expect(a).to eq(8)
    end
  end

  describe 'find missing number in array in nth: 2 position - with 0 in initial seq' do
    let(:seq) { [4, 0, 3, 0, 6, 2, 1, 7, 9] } 
    let(:nth) { 2 } 

    it 'should return the missing number - 5' do
      a = find_missing_number(seq, nth)

      expect(a).to eq(8)
    end
  end

  describe 'find missing number in array in nth: 3 position' do
    let(:seq) { [4, 3, 6, 2, 1, 7, 9] } 
    let(:nth) { 3 } 

    it 'should return the missing number - 5' do
      a = find_missing_number(seq, nth)

      expect(a).to eq(10)
    end
  end

  describe 'edge cases' do
    context 'when empty sequence' do
      let(:seq) { [] } 

      it 'should return: empty sequence' do
        a = find_missing_number(seq)

        expect(a).to eq('empty sequence')
      end
    end

    context 'when all numbers are 0' do
      let(:seq) { [0, 0, 0, 0] } 

      it 'should return: empty sequence' do
        a = find_missing_number(seq)

        expect(a).to eq('empty sequence')
      end
    end

    context 'when sequence has negative numbers' do
      let(:seq) { [-1, 1, 3, 4] } 

      it 'should return: empty sequence' do
        a = find_missing_number(seq)

        expect(a).to eq(2)
      end
    end

    context 'when no number is missing' do
      let(:seq) { [4, 3, 5, 2, 1] } 

      it 'should return: no missing numbers' do
        a = find_missing_number(seq)

        expect(a).to eq('no missing numbers')
      end
    end

    context 'when nth is not contained - nth: 11' do
      let(:seq) { [4, 3, 6, 2, 1, 7, 9] } 
      let(:nth) { 11 } 

      it 'should return: no missing nth: 11 number' do
        a = find_missing_number(seq, nth)

        expect(a).to eq('no missing nth: 11 number')
      end
    end

    context 'when nth is 0' do
      let(:seq) { [4, 3, 6, 2, 1, 7, 9] } 
      let(:nth) { 0 } 

      it 'should return: invalid nth: 0' do
        a = find_missing_number(seq, nth)

        expect(a).to eq('invalid nth: 0')
      end
    end

    context 'when nth is negative' do
      let(:seq) { [4, 3, 6, 2, 1, 7, 9] } 
      let(:nth) { -2 } 

      it 'should return: invalid nth: -2' do
        a = find_missing_number(seq, nth)

        expect(a).to eq('invalid nth: -2')
      end
    end
  end
end
