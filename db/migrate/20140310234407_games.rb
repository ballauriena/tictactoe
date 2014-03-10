class Games < ActiveRecord::Migration
  def change
  	create_table :games do |t|
  		t.integer :challenger_id
  		t.integer :challengee_id
  		t.boolean :win_status
  		t.string :winner

  		t.timestamps
  	end

  	add_index :games, :challenger_id
  	add_index :games, :challengee_id
  end
end
