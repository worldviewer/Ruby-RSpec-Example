# Fill lib with code to build a car race.

# You should have:

# a Car class that can accelerate to a certain speed

# a Race class that, once instantiated, instantiates two 
# cars, and accelerates them to two random speeds

# an instance method on the Race class called winner that 
# returns the winning car

# an instance method on the Race class called loser that 
# returns the losing car

# At the end, you should be able to do:

# race = Race.new
# race.winner
# # => <Car ...>
# race.loser
# # => <Car ...>

require 'spec_helper'

describe Race do
	# Same as car = Car.new
	let(:race) { Race.new }

	describe '#instantiate' do
		it "instantiates two cars" do
			expect( race.cars.length == 2 ).to be_truthy
		end

		it "instantiates the cars to two random speeds" do
			expect( race.cars[0].speed != race.cars[1].speed ).to be_truthy
		end
	end

	describe '#go!' do
		it "has a winner" do
			expect( race.winner ).to be_truthy
		end

		it "has a loser" do
			expect( race.loser ).to be_truthy
		end
	end

end

describe Car do
	# Same as race = Race.new
	let(:car) { Car.new }

	describe '#accelerate' do
		before do
			car.accelerate(20)
		end

		it "can accelerate to a certain speed" do
			expect{ car.accelerate(20) }.to change{car.speed}.by(20)
		end
	end

end
