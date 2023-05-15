class Person
  attr_reader :id, :name, :age
  attr_writer :name, :age
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = 0
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if of_age?  || @parent_permission
    false
  end

  private

  def of_age?
    return true if @age >= 18
    false
  end

end


# Ex:-
p = Person.new(13,"Joan", false)
puts p.can_use_services? #false

p2 = Person.new(18,"Joan", false)
puts p2.can_use_services? #true