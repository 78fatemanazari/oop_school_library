require_relative 'nameable'
require_relative 'decorator'

class Person < Nameable
  attr_accessor :id, :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def parent_permission?
    @parent_permission = true
  end

  def can_use_services?
    of_age? || has_parent_permission?
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
