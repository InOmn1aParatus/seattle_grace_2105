class Doctor
  attr_reader :name,
              :specialty,
              :education,
              :salary

              # Changed parens to brackets to avoid needing #fetch method
  def initialize(details)
    @name = details[:name]
    @specialty = details[:specialty]
    @education = details[:education]
    @salary = details[:salary]
  end
end