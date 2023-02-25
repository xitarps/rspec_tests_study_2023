describe 'Equality Matchers' do
  it '#equal - test if same object' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to equal(x)
    expect(x).not_to equal(y)
  end

  it '#be - test if same object' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to equal(x)
    expect(x).not_to equal(y)
  end

  it '#eql - test if same value' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end

  it '#eq - test if same value' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
end