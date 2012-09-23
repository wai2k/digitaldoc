module SpeakersHelper
  
  def speaker_networks(speaker)
    networks = []
    networks << link_to("", "https://github.com/#{speaker.github_handle}", class: "icon-github") unless speaker.github_handle.blank?
    networks << link_to("", "https://twitter.com/#{speaker.twitter_handle}", class: "icon-twitter") unless speaker.twitter_handle.blank?
    networks << link_to("", "http://www.linkedin.com/pub/#{speaker.linkedin_id}", class: "icon-linkedin") unless speaker.linkedin_id.blank?
    networks << link_to("", "mailto:#{speaker.email}", class: "icon-envelope") unless speaker.email.blank?
    networks.join.html_safe
  end
  
end
