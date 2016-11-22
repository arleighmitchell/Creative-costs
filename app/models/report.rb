class Report < ActiveRecord::Base
  Paperclip.options[:command_path] = "/c/Program Files/ImageMagick-7.0.3-7-Q16/"

	belongs_to :user
	has_many :items

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
