class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
    	t.string :theme
    	t.text :body
    	t.integer :rating
		t.timestamps null: false
		t.references :user
    end
  end
end
