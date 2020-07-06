# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Event.destroy_all
Organization.destroy_all
Ticket.destroy_all
User.destroy_all
# 10.times_do{
#     event.address = Faker::Address.full_address
#     event.title = Faker::Company.name
# }
# Faker::Title.title

o1 = Organization.create(name:'Pretty Girlz Rock, Inc.', image: 'https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/37982958_1833885546728562_2099848543677186048_n.jpg?_nc_cat=110&_nc_sid=85a577&_nc_ohc=YN_ZLnXASUgAX-03Dxs&_nc_ht=scontent-dfw5-1.xx&oh=0857ec8ad1093e3fcf02656628a0bb0f&oe=5F27CC17', description: '(PGR). PGR is a non-profit organization geared towards young girls ages 11 – 18 to help them through the growing pains of life as they mature. We want to help them to understand the gifts and talents they have been blessed with, without compromise.')
o2 = Organization.create(name:'ABC 13', image: 'https://www.pvamu.edu/wp-content/uploads/2020/06/KTRK-TV-ABC13-logo.jpg', description: 'Commercial Television Station')

# create_table "organizations", force: :cascade do |t|
#   t.string "name"
#   t.string "image"
#   t.string "description"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end


e1 = Event.create(title: "Toiletries Drive", category: "Donations", date: "6/10/2020", address: "200 Morris Pesin Dr, Jersey City, NJ 07305", description: "Lorem random random lorem", image: "https://images.squarespace-cdn.com/content/v1/58ed1f8abe6594788cc63423/1538688635989-ZIDXTXQ03046QUUJMR2D/ke17ZwdGBToddI8pDm48kMfboVgnxaKgpGcwguzTCcd7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UWUymGR9T9tQaZJ91OjctDcNAoi32qhd6HffXL1tmh7GLCwLgRJzBxPM8v-1l46jLA/1+-+Hero.jpg", stage: "future", public: true, organization: o1)
e2 = Event.create(title: "Fourth of July in Houston", category: "Concert", date: "7/04/2020", address: "6001 Fannin St, Houston, TX 77030", description: "celebration featuring the Houston Symphony", image: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_649,q_75,w_1200/https://res.cloudinary.com/simpleview/image/upload/v1455215322/clients/houston/MillerOutdoor_2200w_9ecd8285-874e-46ca-bfe9-8ef6ad0ba030.jpg", stage: "cancel", public: true, organization: o2)
e3 = Event.create(title: "Fourth of July in Houston", category: "Concert", date: "7/04/2020", address: "virtual", description: "3 hour long virtual celebration featuring the Houston Symphony", image: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_649,q_75,w_1200/https://res.cloudinary.com/simpleview/image/upload/v1455215322/clients/houston/MillerOutdoor_2200w_9ecd8285-874e-46ca-bfe9-8ef6ad0ba030.jpg", stage: "future", public: true, organization: o2)

# create_table "events", force: :cascade do |t|
#   t.string "title"
#   t.string "category"
#   t.datetime "date"
#   t.string "address"
#   t.string "description"
#   t.string "image"
#   t.string "stage"
#   t.boolean "public"
#   t.integer "organization_id"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

u1 = User.create( user_name: 'eac012', password_digest: '123456', contact: 832-642-3210, age: 19, supporter: "Pretty Girlz Rock, Inc.", role: 'attendee', secret_code: 'null')
u2 = User.create( user_name: 'test123', password_digest: '78910', contact: "testing@test.com", age: 27, supporter: "Pretty Girlz Rock, Inc.", role: 'organizer', secret_code: "h45kd9!0")
# create_table "users", force: :cascade do |t|
#   t.string "user_name"
#   t.string "password_digest"
#   t.string "contact"
#   t.integer "age"
#   t.string "supporter"
#   t.string "role"
#   t.string "secret_code"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

t1 = Ticket.create( user: u1, event: e1)
t2 = Ticket.create( user: u2, event: e1)
# create_table "tickets", force: :cascade do |t|
#   t.bigint "user_id"
#   t.bigint "event_id"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["event_id"], name: "index_tickets_on_event_id"
#   t.index ["user_id"], name: "index_tickets_on_user_id"
# end