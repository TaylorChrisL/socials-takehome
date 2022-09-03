class Instagram
  attr_reader :picture

  def initialize(username, picture)
    @username = username
    @picture = picture
  end
end
