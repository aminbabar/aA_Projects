# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  artist_id  :integer          not null
#  artwork_id :integer          not null
#  body       :string           not null
#
class Comment < ApplicationRecord
    belongs_to :author,
        foreign_key: :artist_id,
        class_name: :User

    belongs_to :artwork,
        foreign_key: :artwork_id,
        class_name: :Artwork

end
