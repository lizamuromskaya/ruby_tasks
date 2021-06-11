# frozen_string_literal: true

require 'rspec'
require_relative 'spec_helper'
require_relative '../histogram'

RSpec.describe 'histogram' do
  describe '#to_histogram' do
    context 'when array is empty' do
      let(:array) { [] }

      it 'returns {}' do
        expect(to_histogram(array)).to eq({})
      end
    end
    context 'when no arguments is given' do
      it 'returns ArgumentError' do
        expect { to_histogram }.to raise_error(ArgumentError)
      end
    end
    context 'when array is given' do
      let(:array) { %w[orange banana banana banana lemon lemon kiwi] }

      it 'returns hash' do
        expect(to_histogram(array)).to eq({ 'banana' => 3, 'kiwi' => 1, 'lemon' => 2, 'orange' => 1 })
      end
    end
  end
end
