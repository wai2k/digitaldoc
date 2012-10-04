module PodcastsHelper

  def subtitle(podcast)
    podcast.created_at.strftime('%B %e, %Y') + " | " + podcast.duration.to_s + " minutes"
  end
end
