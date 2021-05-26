require './lib/doctor'
require './lib/hospital'
require './lib/network'

RSpec.describe Network do
  it 'exists' do
    gsmn = Network.new("Greater Seattle Medical Network")

    expect(gsmn).to be_a(Network)
  end
end