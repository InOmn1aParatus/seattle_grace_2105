class Network
  attr_reader :name, :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def highest_paid_doctor
    all_doctors = []
    @hospitals.each { |hospital| all_doctors << hospital.doctors }
    highest = all_doctors.flatten.max_by { |doctor| doctor.salary }
    highest
  end

  # Full instructor solution
  def doctors_by_hospital
    result = {}
    @hospitals.each do |hospital|
      result[hospital] = hospital.doctors.map do |doctor|
        doctor.name
      end
    end
    result
  end
end
