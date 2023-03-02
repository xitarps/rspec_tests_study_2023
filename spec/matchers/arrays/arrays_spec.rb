RSpec::Matchers.define_negated_matcher :exclude, :include

describe "Arrays Matchers", type: 'collection' do
# describe "Arrays Matchers", collection: true do
  subject { [1, 2, 3, 4] }
  it '#include' do
    expect(subject).to include(3)
    expect(subject).not_to include(5)
    expect(subject).to exclude(5)
  end
  it '#match_array', :slow do
    expect(subject).to match_array([1, 2, 3, 4])
  end
  it '#contain_exactly', slow: true do
    expect(subject).to contain_exactly(1, 2, 3, 4)
    expect(subject).to contain_exactly(4, 3, 2, 1)
  end
end
