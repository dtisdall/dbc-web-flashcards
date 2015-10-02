class CreateRound < ActiveRecord::Migration
  def change
  	 create_table :rounds do |t|
  		t.belongs_to :user, index: true
  		t.belongs_to :deck


  		t.timestamps
  	end
  end
end
