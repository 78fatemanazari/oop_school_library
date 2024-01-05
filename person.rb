require_relative 'nameable'
require_relative 'decorator'

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @generate_id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals []
  end

  private

  def generate_id
    timestamp = Time.now.to_i
    object_id_hex = (object_id << 1).to_s(16)
    "ID-#{timestamp}-#{object_id_hex}"
  end

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end
