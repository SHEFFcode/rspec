RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests the value ignoring the type' do
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests the value without ignoring the type' do
      expect(a).not_to eql(b)
    end
  end

  describe 'equal matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'equal and be are the same thing, checks for identity, is it the same object in memory?' do
      expect(e).to equal(c)
      expect(e).to be(c)
      expect(c).to_not be(d)
    end
  end
end