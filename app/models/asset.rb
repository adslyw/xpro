class Asset < ActiveRecord::Base
  attr_accessible :user_id, :uploaded_file
  belongs_to :user
  @allowed_file_names = [
      /jpe?g\Z/i,
      /png\Z/i,
      /gif\Z/i,
      /csv\Z/i,
      /text\Z/i,
      /pdf\Z/i,
      /docx?\Z/i,
      /pptx?\Z/i,
      /xlsx?\Z/i,
      /zip\Z/i,
      /rar\Z/i,
      /mp4\Z/i,
      /flv\Z/i,
      /mp3\Z/i,
      /ogg\Z/i
  ]
  @allowed_file_types = [
    /image\/(png|gif|jpe?g)/,
    /application\/(zip|ogg|pdf)/,
    /application\/vnd.(ms|openxmlformats).*\Z/,
    /video\/(mp4|ogg|x-flv)/,
    /text\/(plain|csv)/,
    /audio\/(mp4|mpeg|ogg)/
  ]
  has_attached_file :uploaded_file,
                    :url => '/assets/get/:id',
                    :path => "#{Rails.root}/uploaded/assets/:id/:basename.:extension"
  validates_attachment_size :uploaded_file, :less_than => 10.megabytes
  validates_attachment_presence :uploaded_file
  validates_attachment_file_name :uploaded_file, :matches => @allowed_file_names
  validates_attachment_content_type :uploaded_file, :content_type => @allowed_file_types
  def file_name
    uploaded_file_file_name
  end
  def file_size
    uploaded_file_file_size
  end
end
