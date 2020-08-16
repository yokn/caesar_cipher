# frozen_string_literal: false

require './caesar_cipher.rb'

describe 'caesar_cipher' do
  it 'Works with both lowercase and uppercase characters' do
    expect(caesar_cipher('AaBbCc', 3)).to eql('DdEeFf')
  end
  it 'Ignores other characters' do
    expect(caesar_cipher('A][a&B$b@C?c!', 3)).to eql('D][d&E$e@F?f!')
  end
  it 'Works with shift_amount larger than 26' do
    expect(caesar_cipher('AaBbCc', 35)).to eql('JjKkLl')
  end
  it 'Wraps Z to A' do
    expect(caesar_cipher('ZZZzzz', 3)).to eql('CCCccc')
  end
  it 'Keeps the same case' do
    expect(caesar_cipher('AABBCCaabbcc', 3)).to eql('DDEEFFddeeff')
  end
  it 'Can shift backwards' do
    expect(caesar_cipher('DdEeFf', -3)).to eql('AaBbCc')
  end
end
