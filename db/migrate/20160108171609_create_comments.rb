class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :body
    	t.integer :rating
		t.timestamps null: false
		t.references :user
		t.references :record
    end
  end
end
