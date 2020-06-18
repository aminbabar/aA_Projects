# == Schema Information
#
# Table name: users
#
#  id   :bigint           not null, primary key
#  name :string           not null
#
class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :artwork_shares,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy

    has_many :shared_artworks,
        through: :artwork_shares,
        source: :artwork,
        dependent: :destroy

    has_many :comments,
        foreign_key: :artist_id,
        class_name: :Comment,
        dependent: :destroy

end
