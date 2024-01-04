require_relative 'nameable'

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    original_name = @nameable.correct_name
    original_name.upcase()
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    original_name = @nameable.correct_name
    original_name.length <= 10 ? original_name : original_name[0, 10]
  end
end
