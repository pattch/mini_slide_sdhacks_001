class Slide < ActiveRecord::Base
  belongs_to :presentation
  has_attached_file :graphic, styles: { medium: "1280x720", thumb: "160x90" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :graphic, content_type: /\Aimage\/.*\Z/
end
