# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin_account = AdminAccount.find_or_initialize_by(id: 1)
admin_account.update_attributes(email: 'admin@admin.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
# AdminAccount.create!(email: 'admin@admin.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Band.delete_all # すべて削除
Band.connection.execute("delete from sqlite_sequence where name='bands'") # autoincrement削除
Band.create(:name => "bandA")
Band.create(:name => "bandB")
Band.create(:name => "bandC")
Band.create(:name => "bandD")
Band.create(:name => "bandE")

Character.delete_all # すべて削除
Character.connection.execute("delete from sqlite_sequence where name='bang_dream_characters'") # autoincrement削除
Character.create(:first_name => "testA", :band_id => "1")
Character.create(:first_name => "testB", :band_id => "2")
Character.create(:first_name => "testC", :band_id => "3")
Character.create(:first_name => "testD", :band_id => "4")
Character.create(:first_name => "testE", :band_id => "5")
# Character.create(:first_name => "", :band_id => "2")
# Character.create(:first_name => "", :band_id => "2")
# Character.create(:first_name => "", :band_id => "2")
# Character.create(:first_name => "", :band_id => "2")
# Character.create(:first_name => "", :band_id => "2")
# Character.create(:first_name => "", :band_id => "3")
# Character.create(:first_name => "", :band_id => "3")
# Character.create(:first_name => "", :band_id => "3")
# Character.create(:first_name => "", :band_id => "3")
# Character.create(:first_name => "", :band_id => "3")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")
# Character.create(:first_name => "", :band_id => "4")




