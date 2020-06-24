# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do 
    
    subject(:user) do 
        User.create!(
        username: 'zombie1864',
        password: 'abc123;-1900'
    )
    end

describe 'encryption' do 
    it 'password is salted and hashed' do 
        User.create!(username: 'amin', password:'asdfasdf') 
        user = User.find_by(username: 'amin')
        expect(user.password).not_to be('asdfasdf')
    end 

    it 'password is encrpyted' do 
        expect(BCrypt::Password).to receive(:create)
        User.new(username: 'amin', password:'asdfasdf')
    end 
end


    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    # it { should validate_presence_of(:session_token)}
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
    it { should have_many(:goals) } 
    it { should have_many(:comments) } 


    # describe "uniqueness" do
    #     before :each do
    #         create(:user) 
    #     end

    #     it { should validate_uniqueness_of(:session_token) }
    #     it { should validate_uniqueness_of(:username) }
    # end


    # describe "is_password?" do
    #     let!(:user) { create(:user) }

    #     context "with a valid password" do
    #         it "should return true" do
    #             expect(user.is_password?("starwars")).to be(true)
    #         end
    #     end

    #     context "with an invalid password" do
    #         it "should return false" do
    #             expect(user.is_password?("startrek")).to be(false)
    #         end
    #     end
    # end

end 


# Failure/Error: self.password_digest = BCrypt::Password.create(pasword)
     
#      NameError:
#        uninitialized constant User::BCrypt
#      # ./app/models/user.rb:36:in `password='
#      # ./spec/models/user_spec.rb:16:in `block (2 levels) in <top (required)>'
#      # ./spec/models/user_spec.rb:22:in `block (2 levels) in <top (required)>'
#      # ------------------
#      # --- Caused by: ---
#      # NameError:
#      #   uninitialized constant User::BCrypt
#      #   ./app/models/user.rb:36:in `password='