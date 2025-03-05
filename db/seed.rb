require 'faker'

20.times do
    User.new(
        uuid: Faker::Number.number(digits: 10),
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: Faker::Internet.username,
        email: Faker::Internet.email
    ).save
end