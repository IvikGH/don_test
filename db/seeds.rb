# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Message.create(title: 'hello_balance',
               text: 'Здравствуйте, {{name}}. Ваш баланс: {{balance}}{{currency}}')

Account.create(name: 'Chuck Norris',
               email: 'some_email_1@hostname.ru',
               balance: 1_000_000,
               currency: 'USD')

Account.create(name: 'Леонид Якубович',
               email: 'some_email_2@hostname.com',
               balance: 100,
               currency: 'RUB')
