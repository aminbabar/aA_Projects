# == Schema Information
#
# Table name: goals
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  details    :text
#  user_id    :integer          not null
#  completed  :boolean          not null
#  private    :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Goal < ApplicationRecord 

    belongs_to :user, 
    foreign_key: :user_id, 
    class_name: :User 

end 
