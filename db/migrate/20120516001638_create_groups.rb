class CreateGroups < ActiveRecord::Migration
  def up
    create_table :groups do |t|
      t.string :title, :null=>false, :limit=>60
      t.integer :users_count, :null=>false, :default=>false
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end
  end
  
  def down
    drop_table :groups 
  end
end
