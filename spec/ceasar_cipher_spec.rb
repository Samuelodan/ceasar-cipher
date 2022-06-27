# frozen_string_literal: true

require_relative '../main'

RSpec.describe 'Ceasar_cipher' do
  describe 'Shift forward if key is positive' do
    it 'should shift three times to the right' do
      expect(ceasar_cipher(string: 'egg', key: 3)).to eql('hjj')
    end
    it 'should wrap from z to a' do
      expect(ceasar_cipher(string: 'zzzz', key: 3)).to eql('cccc')
    end
  end
end
