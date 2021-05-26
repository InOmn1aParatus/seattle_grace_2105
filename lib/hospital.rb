class Hospital
  attr_reader :name, :chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    total = 0
    @doctors.each do |doctor|
      total += doctor.salary
    end
    total
  end
end

# require 'pry'; binding.pry