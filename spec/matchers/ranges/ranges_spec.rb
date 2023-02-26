describe "Ranges Macthers" do
  subject { (1..5) } 
  it "#cover" do
    expect(subject).to cover(2, 5)
    expect(subject).not_to cover(0, 6)
  end

  it { is_expected.to cover(3) }
  it { is_expected.not_to cover(9) }
end
