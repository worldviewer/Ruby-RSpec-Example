# Ruby-RSpec-Example with Car Race
Quick example of Car and Race classes with RSpec behavioral testing
Fill `lib` and 'spec' with code to build a car race, by validating tests

You should have:

- a Car class that can accelerate to a certain speed
- a Race class that, once instantiated, instantiates two cars, and accelerates them to two random speeds
- an instance method on the Race class called `winner` that returns the winning car
- an instance method on the Race class called `loser` that returns the losing car

At the end, you should be able to do:

```ruby
race = Race.new
race.winner
# => <Car ...>
race.loser
# => <Car ...>
```
