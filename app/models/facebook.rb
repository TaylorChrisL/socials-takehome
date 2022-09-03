class Facebook
  attr_reader :status

  def initialize(name, status)
    @name = name
    @status = status
  end
end
