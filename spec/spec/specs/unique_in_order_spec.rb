require_relative '../../lib/unique_in_order'

describe UniqueInOrder do

  it 'does not return duplicate characters immedietely after' do
    expect(subject.unique('AA')).to eq(['A'])
  end

  it 'removes multiple duplicates in a row' do
    expect(subject.unique('AAA')).to eq(['A'])
  end

  it 'does not remove the same letter with different casing' do
    expect(subject.unique('Aa')).to eq(['A', 'a'])
  end

  it 'does not remove duplicate when they are not next to each other' do
    expect(subject.unique('AABBAabBB')).to eq(['A', 'B', 'A', 'a', 'b', 'B'])
  end

  it 'can process an empty string' do
    expect(subject.unique('')).to eq([])
  end

  it 'can process arrays' do
    expect(["A", "A"]).to eq(['A'])
  end

  it 'can process an empty array' do
    expect(subject.unique([])).to eq([])
  end

end