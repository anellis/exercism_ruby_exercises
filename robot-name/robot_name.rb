class Robot

  attr_accessor :name

  def initialize
    letters = ('A'..'Z').to_a
    @name = letters.sample + letters.sample + rand(100..999).to_s
  end

  def reset
    @name = Robot.new.name
  end

end
