RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirm that a message has been received' do
    # expect(animal). to receieve(:eat_food) # mock, has be done before the call
    animal.eat_food
    expect(animal).to have_receieved(:eat_food) # spy, done after the call
  end

  it 'Does not reset between between examples' do
    expect(animal).to have_receieved(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).with('sushi')
  end
end