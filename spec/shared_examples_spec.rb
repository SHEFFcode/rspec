RSpec.shared_examples 'A ruby object with a length method that returns 3' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3) # note that we did not declare a subject here, and that is fine
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'A ruby object with a length method that returns 3'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'A ruby object with a length method that returns 3'
end

RSpec.describe Hash do
  subject { { a:1, b: 2, c: 3} }
  include_examples 'A ruby object with a length method that returns 3'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'A ruby object with a length method that returns 3'
end