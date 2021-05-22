require_relative '../../lib/generate_shape'

describe GenerateShape do
  it 'returns shape with length and width equal to given number' do
    expect(subject.generate_shape(3)).to eq("+++\n+++\n+++")
  end
end
