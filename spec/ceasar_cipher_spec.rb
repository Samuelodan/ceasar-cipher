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
  describe 'Shift backward if key is negative' do
    it 'should shift three times to the left' do
      expect(ceasar_cipher(string: 'egg', key: -3)).to eql('bdd')
    end
    it 'should wrap from a to z' do
      expect(ceasar_cipher(string: 'aaaa', key: -3)).to eql('xxxx')
    end
  end
end
