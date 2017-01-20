json.extract! blog, :id, :titre, :contenu, :image, :image_legende, :created_at, :updated_at
json.url blog_url(blog, format: :json)