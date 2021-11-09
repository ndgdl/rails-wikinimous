p 'Seeding started'

10.times do
  faker_title = Faker::Company.catch_phrase
  faker_content = []
  rand(1..3).times do
    content = <<-HTML
    <h2>#{Faker::Marketing.buzzwords.capitalize}</h2>
    <p>#{Faker::Lorem.paragraphs.join}</p>
    HTML
    faker_content << content
  end

  faker_content =

  article = Article.new(title: faker_title, content: faker_content.join)
  article.save
end

p "Seeding done"
p "#{Article.count} fake articles created"
