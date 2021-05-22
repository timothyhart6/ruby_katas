require_relative '../../lib/break_camel_case.rb'

describe BreakCamelCase do

  it 'break camel case word' do
    expect(subject.break_camel_case('camelCase')).to eq('camel Case')
  end

  it 'does not space Pascal Case' do
    expect(subject.break_camel_case('TonyBologna')).to eq('Tony Bologna')
  end

  it 'does not alter single word' do
    expect(subject.break_camel_case('Word')).to eq('Word')
  end

  it 'does not alter lower case words' do
    expect(subject.break_camel_case('thisisalllowercase')).to eq('thisisalllowercase')
  end
end
