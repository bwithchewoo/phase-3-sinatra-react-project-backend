puts "🌱 Seeding spices..."

# Seed your database here
Board.create(
    
    )
Token.create([
    {
    token_value: 1,
    horizontal: 1,
    vertical: 1, 
    board_id: 1
    },
    {
    token_value: 1,
    horizontal: 1,
    vertical: 2,
    board_id: 1
    },
    {
        token_value: 1,
horizontal: 1,
vertical: 1,
board_id: 2}
])

puts "✅ Done seeding!"
