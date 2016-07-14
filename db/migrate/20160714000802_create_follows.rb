class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.belongs_to(:following_user)
      t.belongs_to(:followed_user)
      
      t.timestamps null: false
    end
  end
end
