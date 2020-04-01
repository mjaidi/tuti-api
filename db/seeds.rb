# frozen_string_literal: true

# Initializes Available cards

p 'Cleaning database'
Card.destroy_all
Game.destroy_all
GamePlayer.destroy_all
Round.destroy_all
Move.destroy_all
User.destroy_all

p 'Create user'

user = User.create!(email: 'majid@gmail.com', password: 'azerty')
second = User.create(email: 'player2@gmail.com', password: 'azerty')

p 'Create Cards'

p 'Creating coins'
Card.create!(name: 'One', suit: 'coins', score: 11)
Card.create!(name: 'Three', suit: 'coins', score: 10)
Card.create!(name: 'King', suit: 'coins', score: 4)
Card.create!(name: 'Knight', suit: 'coins', score: 3)
Card.create!(name: 'Jack', suit: 'coins', score: 2)
Card.create!(name: 'Seven', suit: 'coins', score: 0)
Card.create!(name: 'Six', suit: 'coins', score: 0)
Card.create!(name: 'Five', suit: 'coins', score: 0)
Card.create!(name: 'Four', suit: 'coins', score: 0)
Card.create!(name: 'Two', suit: 'coins', score: 0)

p 'Creating clubs'
Card.create!(name: 'One', suit: 'clubs', score: 11)
Card.create!(name: 'Three', suit: 'clubs', score: 10)
Card.create!(name: 'King', suit: 'clubs', score: 4)
Card.create!(name: 'Knight', suit: 'clubs', score: 3)
Card.create!(name: 'Jack', suit: 'clubs', score: 2)
Card.create!(name: 'Seven', suit: 'clubs', score: 0)
Card.create!(name: 'Six', suit: 'clubs', score: 0)
Card.create!(name: 'Five', suit: 'clubs', score: 0)
Card.create!(name: 'Four', suit: 'clubs', score: 0)
Card.create!(name: 'Two', suit: 'clubs', score: 0)

p 'Creating cups'
Card.create!(name: 'One', suit: 'cups', score: 11)
Card.create!(name: 'Three', suit: 'cups', score: 10)
Card.create!(name: 'King', suit: 'cups', score: 4)
Card.create!(name: 'Knight', suit: 'cups', score: 3)
Card.create!(name: 'Jack', suit: 'cups', score: 2)
Card.create!(name: 'Seven', suit: 'cups', score: 0)
Card.create!(name: 'Six', suit: 'cups', score: 0)
Card.create!(name: 'Five', suit: 'cups', score: 0)
Card.create!(name: 'Four', suit: 'cups', score: 0)
Card.create!(name: 'Two', suit: 'cups', score: 0)

p 'Creating swords'
Card.create!(name: 'One', suit: 'swords', score: 11)
Card.create!(name: 'Three', suit: 'swords', score: 10)
Card.create!(name: 'King', suit: 'swords', score: 4)
Card.create!(name: 'Knight', suit: 'swords', score: 3)
Card.create!(name: 'Jack', suit: 'swords', score: 2)
Card.create!(name: 'Seven', suit: 'swords', score: 0)
Card.create!(name: 'Six', suit: 'swords', score: 0)
Card.create!(name: 'Five', suit: 'swords', score: 0)
Card.create!(name: 'Four', suit: 'swords', score: 0)
Card.create!(name: 'Two', suit: 'swords', score: 0)
