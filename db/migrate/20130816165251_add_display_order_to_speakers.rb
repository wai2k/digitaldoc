class AddDisplayOrderToSpeakers < ActiveRecord::Migration
  def change
   add_column("speakers", "display_order", :integer, limit: 3) 
  end
end
