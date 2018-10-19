class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :login
      t.string :password_digest

      t.timestamps
    end
    add_index :admins, :login, unique: true
  end
end