describe 'Comaprison Matchers' do
  it '>' do
    expect(5).to be > 1
  end

  it '<' do
    expect(5).to be < 6
  end

  it '>=' do
    expect(5).to be >= 4
  end

  it '<=' do
    expect(5).to be <= 6
  end

  it 'be_between - inclusive' do
    expect(4).to be_between(3,5).inclusive
    expect(5).to be_between(3,5).inclusive
    expect(3).to be_between(3,5).inclusive
  end

  it 'be_between - exclusive' do
    expect(4).to be_between(3,5).exclusive
    expect(5).not_to be_between(3,5).exclusive
    expect(3).not_to be_between(3,5).exclusive
  end

  it 'match - /REGEX/' do
    expect('x@gmail.com').to match(/[a-zA-Z]+@[a-zA-Z]+/)
  end

  it 'start_with' do
    expect('simple phrase').to start_with('simple')
    expect([1,2,3]).to start_with 1
  end

  it 'end_with' do
    expect('simple phrase').to end_with('phrase')
    expect([1,2,3]).to end_with 3
  end

  it '<=>' do
    expect(3 <=> 3).to be 0
    expect(3 <=> 1).to be 1
    expect(1 <=> 3).to be -1
  end
end