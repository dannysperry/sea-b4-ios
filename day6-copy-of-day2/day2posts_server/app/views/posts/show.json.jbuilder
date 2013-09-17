json.extract! @post, :title, :content, :userName, :created_at, :updated_at
json.thumbnail request.protocol + request.host_with_port + @post.photo.url(:thumb)
json.photo request.protocol + request.host_with_port + @post.photo.url
