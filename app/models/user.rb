class User < ApplicationRecord
  include Clearance::User
  has_one :user_informations

  
end
