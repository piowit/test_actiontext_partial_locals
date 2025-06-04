# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create sample comments
puts "Creating sample comments..."

Comment.create!(
  author: "Alice Johnson",
  content: "This is a **great** example of ActionText in Rails! I love how easy it is to add rich text editing capabilities."
)

Comment.create!(
  author: "Bob Smith",
  content: "Here's a comment with a [link](https://rubyonrails.org) and some *italic text*. ActionText makes formatting so simple!"
)

Comment.create!(
  author: "Carol Wilson",
  content: <<~HTML
    <h3>Testing with HTML content</h3>
    <p>This comment includes:</p>
    <ul>
      <li>A bulleted list</li>
      <li>Some <strong>bold text</strong></li>
      <li>And <em>emphasized text</em></li>
    </ul>
    <p>Perfect for testing the custom blob partial!</p>
  HTML
)

puts "Created #{Comment.count} sample comments!"
