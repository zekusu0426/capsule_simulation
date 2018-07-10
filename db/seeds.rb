# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminAccount.create!(email: 'admin@admin.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Band.delete_all # すべて削除
Band.connection.execute("delete from sqlite_sequence where name='bands'") # autoincrement削除
Band.create(:name => "bandA")
Band.create(:name => "bandB")
Band.create(:name => "bandC")
Band.create(:name => "bandD")
Band.create(:name => "bandE")

BangDreamCharacter.delete_all # すべて削除
BangDreamCharacter.connection.execute("delete from sqlite_sequence where name='bang_dream_characters'") # autoincrement削除
BangDreamCharacter.create(:name => "testA", :band_id => "1")
BangDreamCharacter.create(:name => "testB", :band_id => "2")
BangDreamCharacter.create(:name => "testC", :band_id => "3")
BangDreamCharacter.create(:name => "testD", :band_id => "4")
BangDreamCharacter.create(:name => "testE", :band_id => "5")
# BangDreamCharacter.create(:name => "", :band_id => "2")
# BangDreamCharacter.create(:name => "", :band_id => "2")
# BangDreamCharacter.create(:name => "", :band_id => "2")
# BangDreamCharacter.create(:name => "", :band_id => "2")
# BangDreamCharacter.create(:name => "", :band_id => "2")
# BangDreamCharacter.create(:name => "", :band_id => "3")
# BangDreamCharacter.create(:name => "", :band_id => "3")
# BangDreamCharacter.create(:name => "", :band_id => "3")
# BangDreamCharacter.create(:name => "", :band_id => "3")
# BangDreamCharacter.create(:name => "", :band_id => "3")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")
# BangDreamCharacter.create(:name => "", :band_id => "4")




