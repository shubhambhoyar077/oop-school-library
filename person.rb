class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = 0
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

# # Ex:-
# p = Person.new(13, name: 'Joan', parent_permission: false)
# puts p.can_use_services? # false

# p2 = Person.new(18, parent_permission: false)
# puts p2.can_use_services? # true
