class Podcast < ActiveRecord::Base
  attr_accessible :audio_url, :description, :duration, :notes, :title

end
