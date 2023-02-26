describe "Float Matcher" do
  subject { 1.5 }
  it { is_expected.to be_within(0.5).of(1)}
  it { expect(12.5).to be_within(0.5).of(12)}
  it { expect(11.5).to be_within(0.5).of(12)}
  it { expect(0.4).to be_within(0.4).of(0)}
  it { expect(-0.4).to be_within(0.4).of(0)}

  it { expect(12.3).to be_within(0.5).of(12)}
  it { expect(11.7).to be_within(0.5).of(12)}
  it { expect(0.2).to be_within(0.4).of(0)}
  it { expect(-0.2).to be_within(0.4).of(0)}

  it { expect(12.6).not_to be_within(0.5).of(12)}
  it { expect(11.4).not_to be_within(0.5).of(12)}
  it { expect(0.5).not_to be_within(0.4).of(0)}
  it { expect(-0.5).not_to be_within(0.4).of(0)}

  it { expect([12.1, 12.5, 12.4]).to all(be_within(0.5).of(12))}
end
