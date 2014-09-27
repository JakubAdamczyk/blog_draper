json.array!(@articles) do |article|
  json.extract! article, :id, :title, :author, :content, :published
  json.url article_url(article, format: :json)
end
