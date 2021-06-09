# frozen_string_literal: true

require 'rspec'
require_relative 'spec_helper'
require_relative '../sum_array'
require_relative '../max_2_sum'
require_relative '../sum_to_n'

RSpec.describe 'Part1' do
  describe '#sum' do
    context 'when array is given' do
      context 'when array is empty' do
        let(:array) { [] }

        it 'returns zero' do
          expect(sum(array)).to eq(0)
        end
      end

      context 'when array is not empty' do
        let(:array) { [1, 2, 3, 4, 5] }

        it 'returns sum of array elements' do
          expect(sum(array)).to eq(15)
        end
      end
    end

    context 'when no arguments is given' do
      it 'returns ArgumentError' do
        expect { sum }.to raise_error(ArgumentError)
      end
    end

    context 'when given not Integer' do
      let(:array) { [1, '2', 3, 4, 5] }

      it 'returns TypeError' do
        expect { sum(array) }.to raise_error(TypeError)
      end
    end
  end

  describe '#max_2_sum' do
    context 'when array is given' do
      context 'when array is empty' do
        let(:array) { [] }

        it 'returns zero' do
          expect(max_2_sum(array)).to eq(0)
        end
      end

      context 'when array with just one element' do
        let(:array) { [5] }

        it 'returns this 1 element' do
          expect(max_2_sum(array)).to eq(5)
        end
      end

      context 'when array has more than 1 elements' do
        let(:array) { [1, 2, 7, 5, 3] }

        it 'returns sum of 2 largest elements' do
          expect(max_2_sum(array)).to eq(12)
        end
      end

      context 'when array has duplicated largest elements' do
        let(:array) { [1, 2, 7, 5, 7, 3] }

        it 'returns sum of 2 largest elements' do
          expect(max_2_sum(array)).to eq(14)
        end
      end
    end

    context 'when no arguments is given' do
      it 'returns ArgumentError' do
        expect { max_2_sum }.to raise_error(ArgumentError)
      end
    end

    context 'when given not Integer' do
      let(:array) { [1, '2', 3, 4, 5] }

      it 'returns ArgumentError' do
        expect { max_2_sum(array) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#sum_to_n' do
    context 'when array and n is given' do
      context 'when array is empty' do
        let(:array) { [] }
        let(:n) { 3 }

        it 'returns false' do
          expect(sum_to_n?(array, n)).to eq(false)
        end
      end

      context 'when array with just one element' do
        let(:array) { [5] }
        let(:n) { 5 }

        it 'returns false' do
          expect(sum_to_n?(array, n)).to eq(false)
        end
      end

      context 'when array has 2 elements sum to n' do
        let(:array) { [1, 2, 7, 5, 3] }
        let(:n) { 5 }

        it 'returns sum of 2 largest elements' do
          expect(sum_to_n?(array, n)).to eq(true)
        end
      end

      context 'when array has not 2 elements sum to n' do
        let(:array) { [1, 2, 7, 5, 3] }
        let(:n) { 15 }

        it 'returns sum of 2 largest elements' do
          expect(sum_to_n?(array, n)).to eq(false)
        end
      end
    end

    context 'when no arguments is given' do
      it 'returns ArgumentError' do
        expect { sum_to_n? }.to raise_error(ArgumentError)
      end
    end

    context 'when given not Integer' do
      let(:array) { [1, '2', 3, 4, 5] }
      let(:n) { 15 }

      it 'returns TypeError' do
        expect { sum_to_n?(array, n) }.to raise_error(TypeError)
      end
    end
  end
end
