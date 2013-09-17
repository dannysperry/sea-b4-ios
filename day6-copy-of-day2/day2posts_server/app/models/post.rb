require "open-uri"

class Post < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  def photo_from_url(url)
    if url
      self.photo = open(url)
    end
  end

  def convert_from_base64(image_data)
    data = StringIO.new(Base64.decode64(image_data))
    data.class.class_eval { attr_accessor :original_filename, :content_type }

    tmp = Tempfile.new("base64")
    tmp.write(data.read)
    tmp.close

    # only on *nix
    data.content_type = IO.popen(["file", "--brief", "--mime-type",tmp.path], 
       in: :close, err: :close).read.chomp
    data.original_filename = "picture." + data.content_type.split("/").last

    data
  end
  
end
