require 'person'

shared_examples 'status' do |feeling|
  it "#{feeling}" do
    person.public_send("#{feeling}!")
    expect(person.status).to  eq("Feeling #{feeling.capitalize}!")
  end
end

describe Person do
  subject(:person) { Person.new }

  # it '#happy!' do
  #   person.happy!
  #   expect(person.status).to  eq('Feeling happy!')
  # end

  # it '#sad!' do
  #   person.sad!
  #   expect(person.status).to  eq('Feeling sad!')
  # end

  # it '#ok!' do
  #   person.ok!
  #   expect(person.status).to  eq('Feeling ok!')
  # end

  include_examples 'status', 'sad'
  it_behaves_like 'status', 'happy'
  it_should_behave_like 'status', 'ok'
end
