5.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
  5.times do
      user.products.create(name: Faker::Lorem.sentence(word_count: 2), description: Faker::Lorem.paragraph(sentence_count: 3))
  end
end