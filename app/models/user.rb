class User < ActiveRecord::Base
  include Searchable::User

  validates :name, presence: true
  
  has_many :items, dependent: :destroy

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "75x75>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
