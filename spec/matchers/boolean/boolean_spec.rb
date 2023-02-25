describe 'Boolean Matchers' do
  it 'be true' do
    expect(1.odd?).to  be true
  end

  it 'be false' do
    expect(1.even?).to  be false
  end

  it 'be_truthy' do
    expect(1.odd?).to  be_truthy
  end

  it 'be_falsy' do
    expect(1.even?).to  be_falsy
  end

  it 'be_nil' do
    expect(defined? x).to  be_nil
  end
end
