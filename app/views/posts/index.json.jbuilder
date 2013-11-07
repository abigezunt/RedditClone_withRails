json.array!(@posts) do |post|
  json.extract! post, :title, :link, :author, :up_votes, :down_votes, :category
  json.url post_url(post, format: :json)
end
