# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(email: "test@test.com", password: "123123", name: "Тестовый аккаунт")

user.notes.create(
  title: "PCI Express",
  tag_list: "шина, передача данных",
  content:
    "<div>" \
    "В отличие от стандарта PCI, использовавшего для передачи данных общую шину с подключением параллельно" \
    "нескольких устройств, PCI Express, в общем случае, является пакетной сетью с топологией типа звезда." \
    "<br><br>" \
    "Устройства PCI Express взаимодействуют между собой через среду, образованную коммутаторами, при этом" \
    "каждое устройство напрямую связано соединением типа точка-точка с коммутатором." \
    "</div>"
)
