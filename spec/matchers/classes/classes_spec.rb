describe "Classes Matchers" do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer)
    expect(10).not_to be_instance_of(Numeric)
  end

  it 'be_kind_of' do
    expect(10).to be_instance_of(Integer)
    expect(10).to be_kind_of(Numeric)
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size)
  end

  it 'be_a / kind_of' do
    expect('ruby').to be_a(String)
    expect(1).to be_a(Numeric)
    expect(1).to be_a(Integer)
  end

  it 'be_an / kind_of' do
    expect([1,2,3,4]).to be_an(Array)
    expect([1,2,3,4]).to be_an(Object)
  end
end
