describe "Predicate Methods" do
  it 'odd' do
    expect(1).to be_odd
  end

  it 'nil' do
    expect(nil).to be_nil
  end

  it 'empty' do
    expect([]).to be_empty
  end

  it 'zero' do
    expect(0).to be_zero
  end
end
