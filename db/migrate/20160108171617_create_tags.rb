class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
    	t.string :name
		t.timestamps null: false
		t.references :record
    end
  end
end
