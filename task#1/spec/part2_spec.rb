# frozen_string_literal: false

require 'rspec'
require_relative 'spec_helper'
require_relative '../hello'
require_relative '../starts_with_consonant'
require_relative '../binary_multiple_of_4'

RSpec.describe 'Part2' do
  describe '#hello' do
    context 'when string is given' do
      context 'when string is empty' do
        let(:name) { '' }

        it 'returns Hello, ' do
          expect(hello(name)).to eq('Hello, ')
        end
      end

      context 'when string is not empty' do
        let(:name) { 'Liza' }

        it 'returns Hello, Liza' do
          expect(hello(name)).to eq('Hello, Liza')
        end
      end
    end

    context 'when no arguments is given' do
      it 'returns ArgumentError' do
        expect { hello }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#starts_with_consonant' do
    context 'when string is given' do
      context 'when string is empty' do
        let(:s) { '' }

        it 'returns false' do
          expect(starts_with_consonant?(s)).to eq(false)
        end
      end

      context 'when string starts with nonletter' do
        let(:s) { '1Liza' }

        it 'returns false' do
          expect(starts_with_consonant?(s)).to eq(false)
        end
      end

      context 'when string starts with consonant(uppercase)' do
        let(:s) { 'Liza' }

        it 'returns true' do
          expect(starts_with_consonant?(s)).to eq(true)
        end
      end

      context 'when string starts with consonant(lowercase)' do
        let(:s) { 'liza' }

        it 'returns true' do
          expect(starts_with_consonant?(s)).to eq(true)
        end
      end
      context 'when string starts with not consonant(uppercase)' do
        let(:s) { 'Alsa' }

        it 'returns false' do
          expect(starts_with_consonant?(s)).to eq(false)
        end
      end

      context 'when string starts with mot consonant(lowercase)' do
        let(:s) { 'alisa' }

        it 'returns false' do
          expect(starts_with_consonant?(s)).to eq(false)
        end
      end
    end

    context 'when no arguments is given' do
      it 'returns ArgumentError' do
        expect { starts_with_consonant? }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#binary_multiple_of_4' do
    context 'when string is given' do
      context 'when string is empty' do
        let(:s) { '' }

        it 'returns false' do
          expect(binary_multiple_of_4?(s)).to eq(false)
        end
      end

      context 'string is not a binary number' do
        let(:s) { 'AAbs' }

        it 'returns false' do
          expect(binary_multiple_of_4?(s)).to eq(false)
        end
        let(:s) { '4567' }

        it 'returns false' do
          expect(binary_multiple_of_4?(s)).to eq(false)
        end
      end
      context 'string is a valid binary number' do
        let(:s) { '1100' }

        it 'returns true' do
          expect(binary_multiple_of_4?(s)).to eq(true)
        end
      end
      context 'string is not a valid binary number' do
        let(:s) { '1111' }

        it 'returns false' do
          expect(binary_multiple_of_4?(s)).to eq(false)
        end
      end
    end

    context 'when no arguments is given' do
      it 'returns ArgumentError' do
        expect { binary_multiple_of_4? }.to raise_error(ArgumentError)
      end
    end
  end
end
