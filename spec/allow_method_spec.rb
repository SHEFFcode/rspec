RSpec.describe 'allow method review' do
  it 'can customize return values for for our double object' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)  # default return value is nil

    expect(calculator.add).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(125) # arbitrary value to stub out a single method on an existing object
    expect(arr.sum).to eq(125)

    # All other methods are the originals
    expect(arr.push(4)).to eq([1, 2, 3, 4]) # existing implementation is not modified
  end

  it 'can return multiple items in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :d, nil)  # this mocks return values from multiple invocations
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:d)
    expect(mock_array.pop).to eq(nil)
  end 
end