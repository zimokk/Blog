class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :login
    	t.string :password
    	t.string :email
    	t.integer :age
    	t.timestamps null: false
    	#t.references :records
    end
  end
end
