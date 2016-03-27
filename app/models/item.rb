class Item < ActiveRecord::Base
  include Searchable::Item

  belongs_to :user

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "75x75>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
