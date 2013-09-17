atom_feed do |feed|
  feed.title "The Digital Doctor Podcast"
  feed.updated @podcasts.last.updated_at

  @podcasts.each do |podcast|
    feed.entry podcast do |entry|
      entry.title podcast.title
      entry.content podcast.audio_url
      entry.author do |author|
        author.name "The Digital Doctors"
      end
    end
  end
end
