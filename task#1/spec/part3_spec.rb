# frozen_string_literal: true

require 'rspec'
require_relative 'spec_helper'
require_relative '../book'

RSpec.describe 'Part3' do
  subject { BookInStock.new('123', 6.0) }
  describe 'getters and setters' do
    context 'when getters for isbn exists' do
      it { expect respond_to subject.isbn }
    end
    context 'when setters for isbn exists' do
      it { expect respond_to subject.isbn = '12' }
    end
    context 'when getters for price exists' do
      it { expect respond_to subject.price }
    end
    context 'when setters for price exists' do
      it { expect respond_to subject.price = 3 }
    end
  end

  describe 'constructor' do
    context 'when no arguments is given' do
      it 'returns ArgumentError' do
        expect { BookInStock.new }.to raise_error(ArgumentError)
      end
    end
    context 'when 1 argument is given' do
      it 'returns ArgumentError' do
        expect { BookInStock.new('22') }.to raise_error(ArgumentError)
      end
    end
    context 'when price<=0' do
      it 'returns ArgumentError' do
        expect { BookInStock.new('45', 0) }.to raise_error(ArgumentError)
      end
    end
    context 'when isbn is empty' do
      it 'returns ArgumentError' do
        expect { BookInStock.new('', 233) }.to raise_error(ArgumentError)
      end
    end
    context 'when isbn is not string' do
      it 'returns ArgumentError' do
        expect { BookInStock.new(333, 233) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#price_as_string' do
    context 'when price is 6.0' do
      it 'returns string $6.00' do
        expect(subject.price_as_string).to eq('$6.00')
      end
      context 'when price is 6' do
        it 'returns string $6.00' do
          subject { BookInStock.new('123', 6) }

          expect(subject.price_as_string).to eq('$6.00')
        end
      end
    end
  end
end
