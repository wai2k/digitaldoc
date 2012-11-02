class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :title
      t.integer :duration
      t.text :description
      t.text :notes
      t.string :audio_url

      t.timestamps
    end
  end
end
