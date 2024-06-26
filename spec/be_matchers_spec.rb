RSpec.describe 'be matchers' do
  it 'test for truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect([]).to be_truthy
    expect([1, 2, 3]).to be_truthy
    expect(-1).to be_truthy
    expect(:symbol).to be_truthy
    expect({}).to be_truthy
  end

  it 'tests for falsyness' do
    expect(nil).to be_falsy
    expect(false).to be_falsy
  end

  it 'tests for nil' do
    expect(nil).to be_nil

    my_hash = {a: 5}
    expect(my_hash[:b]).to be_nil
  end
end