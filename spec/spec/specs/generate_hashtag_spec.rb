require_relative '../../lib/generate_hashtag'
describe GenerateHashtag do
  it 'prepends a hashtag to the phrase' do
    expect(subject.generate_hashtag('Test')).to eq('#Test')
  end

  it 'removes spaces' do
    expect(subject.generate_hashtag('Test Space Removal')).to eq('#TestSpaceRemoval')
  end

  it 'capitalizes the first letter of each word' do
    expect(subject.generate_hashtag('uppercase the first letter')).to eq('#UppercaseTheFirstLetter')
  end

  it 'returns false if the string is empty' do
    expect(subject.generate_hashtag('')).to be false
  end

  it 'returns false if the string is more than 140 characters' do
    expect(subject.generate_hashtag('This string is more than 140 characters. If you count you will see it is too long. Time to keep adding text to exceed the max. This should be enough. Adding more to account for the whitespaces so I can enough characters.')).to eq(false)
  end
end
