require 'not_empty_string'

describe String do
  describe NotEmptyString do
    it 'should not be empty' do
      expect(subject).to eq 'Not Empty!' 
    end
  end
  it 'should be empty' do
    expect(subject).not_to eq 'Not Empty!' 
  end
end
