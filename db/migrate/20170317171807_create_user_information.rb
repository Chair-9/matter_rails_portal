class CreateUserInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :user_informations do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "role"
      t.string "street"
      t.string "city"
      t.string "state"
      t.string "zipcode"
      t.string "business_name"

      t.timestamps
    end
  end
end
