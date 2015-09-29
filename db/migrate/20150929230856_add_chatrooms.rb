class AddChatrooms < ActiveRecord::Migration
  def change
  	 create_table :chatrooms do |t|
  	 	t.string :name
  	 	t.string :summary
  	 end
  end
end
