json.extract! reservation, :id, :profile_id, :quipment_id, :track_id, :reservation_date, :nb_of_people, :price, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
