json.array!(@tokens) do |token|
  json.extract! token, :id, :access, :secret
  json.url token_url(token, format: :json)
end
