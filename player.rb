class Player

  attr_accessor :lives , :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives -= 1
  end

  def right_answer #is this ok to have nothing.
  end

  def status
    "#{name} Lives: #{@lives}"
  end

  def dead?
    @lives <= 0
  end

end