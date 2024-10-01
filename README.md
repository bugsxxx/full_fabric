# README

## Full Fabric - Find missing number

Ruby 3.2.2

## Clone:
[GitHub](https://github.com/bugsxxx/full_fabric)

## Install:
bundle install

## Test using terminal:
execute:

irb

irb\> require './lib/challenge.rb'

irb\> include Challenge

irb\> find_missing_number(sequence, nth)


## Tests:
rspec spec/challenge_spec.rb

## Some notes regarding the task:

I decide to go with a simple .rb file with pretty much the function described, I hope I'm not simplifying to much. I'm sorry if I am, I just understand that the point was to test the attention to the edge cases and some logic thinking.

Also remembered old Newton approach for this kind of problems and the number != previous + 1 approach, but I felt that the sparse note could be pointing to not consecutive numbers. Sparse could eventually, also means sequence with 0s (also treat that cases). And finally the param nth could eventually make the function more complex than it should.
So I 'basically' made the diff between arrays and fetch the nth missing number. 
