RSpec.describe 'change matchers' do
  subject { [1, 2, 3] }

  it 'checks that the method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change {subject.length}.by(-1)
  end
end