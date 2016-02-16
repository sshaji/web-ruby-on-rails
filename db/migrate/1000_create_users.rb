class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, { id: false } do |t|
      t.string :username, :limit => 60
      t.string :password, :limit => 60
      t.string :firstname, :limit => 60
      t.string :lastname, :limit => 60
      t.string :email, :limit => 60
      t.boolean :enabled, :default => true
    end
    change_column :users, :username, :primary_key
    change_column :users, :username, :string, :limit => 60
  end
end
