describe 'Expectation Compositions Matchers' do
  subject { 'Ruby on Rails' }

  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(%w(uva maçã pêra).sample).to be_eql('maça').or be_eql('uva').or be_eql('pêra') }
end
