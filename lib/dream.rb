class Nation
  def creed
    "all men are created equal"
  end
  def rise_up?
    true
  end
  def judge_by(judgeMatter)
    return false if judgeMatter == :color
    true
  end
  def self.join_hands(leftHand, rightHand)
  end
end

class State
  attr_accessor :name, :people, :status
  def initialize(name)
    @name = name
    @people = [{ancestors: "slaves"}, {ancestors: "slave-owners"}]
    @people = [{age: Random.new.rand(18), color: "black"}, {age: Random.new.rand(18), color: "white"}] if @name == "Alabama"
    @status = "a state sweltering with the heat of injustice and oppression"
  end
  def table_of_brotherhood
    @people.select { |person| person[:ancestors] != "slave-owners" }
  end
  def sit_at_table(people)
    "sons_of_former_slaves + sons_of_former_slave_owners"
  end
  def emancipate()
    @status = "an oasis of freedom and justice"
  end
end

class Freedom
  def initialize
    @states = []
  end

  def ring(state)
    @states << state
  end
  def land()
    @states
  end
end
