json.array!(@posts) do |post|
  json.extract! post, :title, :content, :userName
	json.thumbnail request.protocol + request.host_with_port + post.photo.url(:thumb)
	json.photo request.protocol + request.host_with_port + post.photo.url
  json.url post_url(post, format: :json)
end
