class NotEmptyString < String
  def initialize
    self << 'Not Empty!'
  end
end
