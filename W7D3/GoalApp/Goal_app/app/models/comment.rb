# == Schema Information
#
# Table name: comments
#
#  id             :bigint           not null, primary key
#  body           :text             not null
#  comment_id     :integer          not null
#  user_id        :integer          not null
#  other_comments :text             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Comment < ApplicationRecord 
    belongs_to :user, 
    foreign_key: :user_id, 
    class_name: :User 
    
end 
