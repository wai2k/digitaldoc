class AddVisibleToSpeakers < ActiveRecord::Migration
  def change
    add_column(:speakers, :visible, :boolean)
  end
end
