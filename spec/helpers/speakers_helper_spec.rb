require 'spec_helper'

describe SpeakersHelper do
  describe "speaker_networks" do
    
    before :each do 
      @speaker = double("speaker", github_handle: nil, linkedin_id: nil, twitter_handle:nil, email: nil)
    end
    it "should return github link if there's a github handle" do
      @speaker.stub(github_handle: "iHiD")
      helper.speaker_networks(@speaker).should == '<a href="https://github.com/iHiD" class="icon-github"></a>'
    end
    it "should return linked_in link if there's a linkedin id" do
      @speaker.stub(linkedin_id: "iHiD")
      helper.speaker_networks(@speaker).should == '<a href="http://www.linkedin.com/pub/iHiD" class="icon-linkedin"></a>'
    end
    it "should return twitter link if there's a twitter handle" do
      @speaker.stub(twitter_handle: "iHiD")
      helper.speaker_networks(@speaker).should == '<a href="https://twitter.com/iHiD" class="icon-twitter"></a>'
    end
    it "should return email link if there's a email" do
      @speaker.stub(email: "jez.walker@gmail.com")
      helper.speaker_networks(@speaker).should == '<a href="mailto:jez.walker@gmail.com" class="icon-envelope"></a>'
    end
    it "should return combinations correctly" do
      @speaker.stub(github_handle: "iHiD")
      @speaker.stub(twitter_handle: "iHiD")
      @speaker.stub(email: "jez.walker@gmail.com")
      helper.speaker_networks(@speaker).should == '<a href="https://github.com/iHiD" class="icon-github"></a><a href="https://twitter.com/iHiD" class="icon-twitter"></a><a href="mailto:jez.walker@gmail.com" class="icon-envelope"></a>'
    end
  end
end