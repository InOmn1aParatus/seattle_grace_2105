class Doctor
  attr_reader :name,
              :specialty,
              :education,
              :salary

  def initialize(details)
    @name = details.fetch(:name)
    @specialty = details.fetch(:specialty)
    @education = details.fetch(:education)
    @salary = details.fetch(:salary)
  end
end