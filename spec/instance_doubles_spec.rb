class Person
  def a
    sleep(3)
    "Hello"
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)  # We have added a method that does not exist on the original
      expect(person.a).to eq("Hello")
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      person = instance_double(Person, a: 'Hello', b: 20)
    end

    it 'can be done via allow methods as well' do
      person = instance_double(Person)

      allow(person).to receive(:a).with(3, 10).and_return('Hello')  # Will tell you that the arity of the method does not match the double
    end
  end
end