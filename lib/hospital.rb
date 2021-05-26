class Hospital
  attr_reader :name, :chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    total = 0
    @doctors.each { |doctor| total += doctor.salary}
    total
  end

  def lowest_paid_doctor
    lowest = @doctors.min_by { |doctor| doctor.salary }
    lowest.name
  end

  def specialties
    specialties = []
    @doctors.each { |doctor| specialties << doctor.specialty }
    specialties
  end
end

# require 'pry'; binding.pry