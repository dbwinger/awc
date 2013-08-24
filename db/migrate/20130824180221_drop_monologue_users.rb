class DropMonologueUsers < ActiveRecord::Migration
  def up
    drop_table :monologue_users
  end

  def down
    create_table :monologue_users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

