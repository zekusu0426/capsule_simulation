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
Band.create(:id => 1,:name => "Poppin'Party", :name_kana => "ポッピンパーティー")
Band.create(:id => 2,:name => "After glow", :name_kana => "アフターグロウ")
Band.create(:id => 3,:name => "Pastel Palettes", :name_kana => "パステルパレット")
Band.create(:id => 4,:name => "Roselia", :name_kana => "ロゼリア")
Band.create(:id => 5,:name => "ハロー、ハッピーワールド!", :name_kana => "ハローハッピーワールド")

Element.delete_all # すべて削除
Element.connection.execute("delete from sqlite_sequence where name='Elements'") # autoincrement削除
Element.create(:name => "パワフル" ,:name_kana => "パワフル")
Element.create(:name => "クール" ,:name_kana => "クール")
Element.create(:name => "ピュア" ,:name_kana => "ピュア")
Element.create(:name => "ハッピー" ,:name_kana => "ハッピー")

Card.delete_all # すべて削除
Card.connection.execute("delete from sqlite_sequence where name='Cards'") # autoincrement削除
Card.create(:id => 1, :name => "テストデータ", :name_kana => "テストデータ", :character_id => 1 , :capsule_id => 1, :element_id => 1, :performance => 1111, :technic => 1111, :visual => 1111, :introduction => "", :created_at => "2018/07/15", :updated_at => "2018/07/15")

Character.delete_all # すべて削除
Character.connection.execute("delete from sqlite_sequence where name='bang_dream_characters'") # autoincrement削除
Character.create(:first_name => "香澄", :first_name_kana => "カスミ", :last_name => "戸山", :last_name_kana => "トヤマ", :band_id => 1, :introduction => "")
Character.create(:first_name => "有咲", :first_name_kana => "アリサ", :last_name => "市ヶ谷", :last_name_kana => "イチガヤ", :band_id => 1, :introduction => "")
Character.create(:first_name => "たえ", :first_name_kana => "タエ", :last_name => "花園", :last_name_kana => "ハナゾノ", :band_id => 1, :introduction => "")
Character.create(:first_name => "沙綾", :first_name_kana => "サアヤ", :last_name => "山吹", :last_name_kana => "ヤマブキ", :band_id => 1, :introduction => "")
Character.create(:first_name => "りみ", :first_name_kana => "リミ", :last_name => "牛込", :last_name_kana => "ウシゴメ", :band_id => 1, :introduction => "")

Character.create(:first_name => "蘭", :first_name_kana => "ラン", :last_name => "美竹", :last_name_kana => "ミタケ", :band_id => 2, :introduction => "")
Character.create(:first_name => "つぐみ", :first_name_kana => "ツグミ", :last_name => "羽沢", :last_name_kana => "ハザワ", :band_id => 2, :introduction => "")
Character.create(:first_name => "ひまり", :first_name_kana => "ヒマリ", :last_name => "上原", :last_name_kana => "ウエハラ", :band_id => 2, :introduction => "")
Character.create(:first_name => "モカ", :first_name_kana => "モカ", :last_name => "青葉", :last_name_kana => "アオバ", :band_id => 2, :introduction => "")
Character.create(:first_name => "巴", :first_name_kana => "トモエ", :last_name => "宇田川", :last_name_kana => "ウタガワ", :band_id => 2, :introduction => "")

Character.create(:first_name => "彩", :first_name_kana => "アヤ", :last_name => "丸山", :last_name_kana => "マルヤマ", :band_id => 3, :introduction => "")
Character.create(:first_name => "千聖", :first_name_kana => "チサト", :last_name => "白鷺", :last_name_kana => "シラサギ", :band_id => 3, :introduction => "")
Character.create(:first_name => "イヴ", :first_name_kana => "イヴ", :last_name => "若宮", :last_name_kana => "ワカミヤ", :band_id => 3, :introduction => "")
Character.create(:first_name => "麻弥", :first_name_kana => "マヤ", :last_name => "大和", :last_name_kana => "ヤマト", :band_id => 3, :introduction => "")
Character.create(:first_name => "日菜", :first_name_kana => "ヒナ", :last_name => "氷川", :last_name_kana => "ヒカワ", :band_id => 3, :introduction => "")

Character.create(:first_name => "友希那", :first_name_kana => "ユキナ", :last_name => "湊", :last_name_kana => "ミナト", :band_id => 4, :introduction => "")
Character.create(:first_name => "リサ", :first_name_kana => "リサ", :last_name => "今井", :last_name_kana => "イマイ", :band_id => 4, :introduction => "")
Character.create(:first_name => "燐子", :first_name_kana => "リンコ", :last_name => "白金", :last_name_kana => "シロカネ", :band_id => 4, :introduction => "")
Character.create(:first_name => "あこ", :first_name_kana => "アコ", :last_name => "宇田川", :last_name_kana => "ウタガワ", :band_id => 4, :introduction => "")
Character.create(:first_name => "紗夜", :first_name_kana => "サヨ", :last_name => "氷川", :last_name_kana => "ヒカワ", :band_id => 4, :introduction => "")

Character.create(:first_name => "こころ", :first_name_kana => "ココロ", :last_name => "弦巻", :last_name_kana => "ツルマキ", :band_id => 5, :introduction => "")
Character.create(:first_name => "薫", :first_name_kana => "カオル", :last_name => "瀬田", :last_name_kana => "セタ", :band_id => 5, :introduction => "")
Character.create(:first_name => "美咲", :first_name_kana => "ミサキ", :last_name => "奥沢", :last_name_kana => "オクザワ", :band_id => 5, :introduction => "")
Character.create(:first_name => "花音", :first_name_kana => "カノン", :last_name => "松原", :last_name_kana => "マツバラ", :band_id => 5, :introduction => "")
Character.create(:first_name => "北沢", :first_name_kana => "ハグミ", :last_name => "北沢", :last_name_kana => "キタザワ", :band_id => 5, :introduction => "")






