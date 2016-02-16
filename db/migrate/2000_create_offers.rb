class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers, { id: false } do |t|
      t.integer :id
      t.string :user_username, :limit => 60
      t.text :offerdetails, :limit => 250
    end
    change_column :offers, :id, :primary_key
    add_foreign_key :offers, :users, column: :user_username, primary_key: 'username', on_update: :cascade, on_delete: :cascade
  end
end
