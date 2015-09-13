json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :text, :byline
  json.url blog_url(blog, format: :json)
end
