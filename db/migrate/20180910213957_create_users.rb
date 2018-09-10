class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      
      t.timestamps
      t.string :name, null: false
      t.string :email, presence: true
    end
    
    add_index :users, :email, unique: true
  end
end
