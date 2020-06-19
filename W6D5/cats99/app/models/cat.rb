class Cat < ApplicationRecord
    COLORS = ["gray","grey","white","orange","yellow","black"]
    SEX = ["M","F"]
    validates :birth_date, :color, :name, :sex, :description, presence: true 
    validates :color, inclusion: { in: COLORS }
    validates :sex, inclusion: { in: SEX }

    # def age
    #     Cat.birthdate
    # end


end