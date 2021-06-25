require_relative '../../lib/compare_arrays'

describe CompareArray do
  arr1 = [11]  
  arr2 = [121]

  it 'returns true if all numbers from array 1 are squared in array 2' do
    expect(subject.comp(arr1, arr2)).to be true
  end

end
