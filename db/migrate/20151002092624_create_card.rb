class CreateCard < ActiveRecord::Migration
  def change
  	  	create_table :cards do |t|
  		t.belongs_to :deck, index: true
  		t.string :question
  		t.string :answer

  		t.timestamps
  	end
  end
end
