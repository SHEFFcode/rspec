class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you baby'
  end

  def fall_off_ladder
    'call my agent'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_filming
    if @actor.ready?
      puts @actor.act
      puts @actor.fall_off_ladder
      puts @actor.light_on_fire
      puts @actor.act  # Act twice!
    end
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_filming

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, act: 'Any string', fall_off_ladder: 'sure lets do it', light_on_fire: true) }
  subject { described_class.new(stuntman) }

  context 'start shooting method' do
    it 'expects an actor to do 3 actions' do
      expect(stuntman).to receive(:ready?).once
      expect(stuntman).to receive(:act).exactly(2).times
      # expect(stuntman).to receive(:act).twice
      expect(stuntman).to receive(:fall_off_ladder).at_most(1).times
      expect(stuntman).to receive(:light_on_fire).once
      subject.start_filming
    end
  end
  
end