json.extract! photo, :id, :image, :album_id, :tagline, :created_at, :updated_at
json.url photo_url(photo, format: :json)
