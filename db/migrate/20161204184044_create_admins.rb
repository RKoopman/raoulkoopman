class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :user_name
      t.string :email

      t.timestamps
    end
  end
end
