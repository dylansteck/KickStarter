class Initial < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username
  		t.password :password
  	end

  	create_table :projects do |t|
  		t.belongs_to :user
  		t.string :name
  		t.string :info
  		t.float :money_goal
  		t.float :money_raised
  		t.datetime :deadline
  	end
  end
end
