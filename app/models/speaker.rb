class Speaker < ActiveRecord::Base
  attr_accessible :bio, :email, :github_handle, :linkedin_id, :name, :position, :twitter_handle, :display_order
  
  has_attached_file :avatar
end
