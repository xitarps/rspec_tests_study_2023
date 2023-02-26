describe "Collections matchers" do
  subject { [1, 7, 9] }
  it { is_expected.to all (be_odd).and be_an(Integer)}
end
