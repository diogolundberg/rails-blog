json.array!(@posts) do |post|
  json.extract! post, :id, :content, :title, :author, :image
  json.url post_url(post, format: :json)
end
