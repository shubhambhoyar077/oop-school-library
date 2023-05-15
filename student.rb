require_relative 'person'

class Student < Person
  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

# Ex:-
# s = Student.new(13, "B12", parent_permission: false)
# puts s.can_use_services?
# puts s.play_hooky
