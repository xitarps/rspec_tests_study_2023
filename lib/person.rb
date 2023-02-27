class Person
  attr_accessor :name, :age
  attr_reader :status

  def initialize(**args)
    @name = args.fetch(:name, 'unknow')
    @age = args.fetch(:age, 0)
  end

  def happy!
    @status = 'Feeling Happy!'
  end

  def sad!
    @status = 'Feeling Sad!'
  end

  def ok!
    @status = 'Feeling Ok!'
  end
end
