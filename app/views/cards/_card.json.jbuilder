json.extract! card, :id, :name, :name_kana, :character_id, :capsule_id, :element_id, :performance, :technic, :visual, :introduction, :created_at, :updated_at
json.url card_url(card, format: :json)
