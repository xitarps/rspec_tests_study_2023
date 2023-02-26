require 'person'

describe Person, ' - attributes' do
  it 'have_attributes - default values' do
    expect(subject).to have_attributes(name: 'unknow', age: 0)
  end

  it 'have_attributes - with a set of values' do
    subject = Person.new(name: 'Xita', age: 32)
    expect(subject).to have_attributes(name: 'Xita', age: 32)
    expect(subject).to have_attributes(name: starting_with('X'), age: (be > 31))
  end
end
