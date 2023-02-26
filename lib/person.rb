class Person
  attr_accessor :name, :age

  def initialize(**args)
    @name = args.fetch(:name, 'unknow')
    @age = args.fetch(:age, 0)
  end
end
