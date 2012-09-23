class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name,     null: false
      
      t.string :position, null: true

      t.string :twitter_handle, null: true
      t.string :linkedin_id,    null: true
      t.string :github_handle,  null: true
      t.string :email,          null: true
      
      t.text :bio, null: false

      t.timestamps
    end
  end
end
