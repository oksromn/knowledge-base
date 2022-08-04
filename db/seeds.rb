# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(email: "test@test.com", password: "123123", name: "Тестовый аккаунт")

default_folder = user.folders.find_by(default: true)
user.notes.create(
  title: "PCI Express",
  tag_list: "шина, передача данных",
  folder_id: default_folder.id,
  content:
    "<div>" \
    "В отличие от стандарта PCI, использовавшего для передачи данных общую шину с подключением параллельно" \
    "нескольких устройств, PCI Express, в общем случае, является пакетной сетью с топологией типа звезда." \
    "<br><br>" \
    "Устройства PCI Express взаимодействуют между собой через среду, образованную коммутаторами, при этом" \
    "каждое устройство напрямую связано соединением типа точка-точка с коммутатором." \
    "</div>"
)

philosophy_folder = user.folders.create(name: "Философия", color: "pink")
user.notes.create(
  title: "Фридрих Энгельс",
  tag_list: "философ, автор",
  folder_id: philosophy_folder.id,
  content:
    "<div>" \
    "Немецкий политический деятель, философ, историк и предприниматель. Один из основоположников" \
    "марксизма. Друг и единомышленник Карла Маркса и соавтор его трудов." \
    "<br><br>" \
    "В 1848 году совместно с Карлом Марксом он написал «Манифест Коммунистической партии». Помимо этой" \
    "работы, он сам и в соавторстве (в основном с Марксом) написал ряд других трудов, а позже финансово" \
    "поддерживал Маркса, пока тот вёл исследования и писал «Капитал»." \
    "</div>"
)
