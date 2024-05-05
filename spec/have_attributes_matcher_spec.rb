class ProfessionalWrstler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end 
end


RSpec.describe 'has attributes matcher' do
  describe ProfessionalWrstler.new('Stone Cold Steve Austin', 'Stunner') do
    it 'checks for subject attributes and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin')
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner') }
  end
end