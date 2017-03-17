class AddUserToUserInformation < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_informations, :user, foreign_key: true
  end
end
