# frozen_string_literal: true

require 'rspec'
require_relative 'spec_helper'
require_relative '../safe_invert'

RSpec.describe 'InvertHash' do
  include SafeInvert
  describe '#safe_invert' do
    context 'when hash is empty' do
      let(:hash) { {} }

      it 'returns {}' do
        expect(hash.safe_invert).to eq({})
      end
    end
    context 'when calles without hash' do
      it 'returns ArgumentError' do
        expect { safe_invert }.to raise_error(NoMethodError)
      end
    end
    context 'when hash is given' do
      let(:hash) { { 'orange' => 'Marocco', 'banana' => 'Ecuador', 'lemon' => 'Marocco' } }

      it 'returns inverthash' do
        expect(hash.safe_invert).to eq({ 'Ecuador' => 'banana', 'Marocco' => %w[lemon orange] })
      end
    end
  end
end
