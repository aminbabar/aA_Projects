# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#
class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true
  # validates :artist_id, presence: true
  validates :title, uniqueness: { scope: :artist_id }

  has_many :artwork_shares,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer
  
  has_many :comments,
      foreign_key: :artwork_id,
      class_name: :Comment,
      dependent: :destroy

end
