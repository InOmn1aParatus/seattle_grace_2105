class Hospital
  attr_reader :name, :chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    # total = 0
    # @doctors.each { |doctor| total += doctor.salary}
    # total
    @doctors.sum do |doctor|
      doctor.salary
    end
  end

  def lowest_paid_doctor
    lowest = @doctors.min_by { |doctor| doctor.salary }
    lowest.name
  end # Can also add '.name' onto 'end'

  def specialties
    @doctors.map { |doctor| doctor.specialty }
  end
  # Rewrote to avoid using an aggregator
end