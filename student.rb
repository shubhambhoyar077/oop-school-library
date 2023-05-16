require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    @classroom.students.push(self) unless @classroom.students.include?(self)
    end
  end
end

# Ex:-
# s = Student.new(13, "B12", parent_permission: false)
# puts s.can_use_services?
# puts s.play_hooky
