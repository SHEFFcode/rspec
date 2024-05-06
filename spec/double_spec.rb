RSpec.describe 'double' do
  it 'allows only defined methods to be invoked' do
    stuntman = double("Mr. Danger", fall_off_a_ladder: 'ouch', light_on_fire: true)
    expect(stuntman.fall_off_a_ladder).to eq('ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end

  it 'has another way to define methods' do
    stuntman = double("Mr. Danger")

    allow(stuntman).to receive(:fall_off_ladder).and_return('ouch')
    expect(stuntman.fall_off_ladder).to eq('ouch')
  end

  it 'can receive messages' do
    stuntman = double("Mr. Danger")

    allow(stuntman).to receive_messages(fall_off_ladder: 'ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end