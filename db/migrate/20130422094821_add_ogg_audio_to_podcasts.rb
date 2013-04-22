class AddOggAudioToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :ogg_audio_url, :string
  end
end
