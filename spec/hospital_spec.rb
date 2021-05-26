require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do
  it 'exists' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

    expect(seattle_grace).to be_a(Hospital)
  end
end