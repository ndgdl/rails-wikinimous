p 'Seeding started'

10.times do
  faker_title = Faker::Company.catch_phrase
  faker_content = Faker::Company.bs.capitalize

  article = Article.new(title: faker_title, content: faker_content)
  article.save
end

p "Seeding done"
p "#{Article.count} fake articles created"
