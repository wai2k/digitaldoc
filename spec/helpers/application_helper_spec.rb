require 'spec_helper'

describe ApplicationHelper do
  describe "menu_item_class" do
    
    it "should return active if we're on the index page and the item is index" do
      helper.stub(controller_name: "pages")
      helper.stub(action_name: "index")
      helper.menu_item_class(:index).should == 'active'
      helper.menu_item_class(:speakers).should == nil
    end
    it "should return active if we're on the speakers page and the item is speakers" do
      helper.stub(controller_name: "speakers")
      helper.stub(action_name: "index")
      helper.menu_item_class(:index).should == nil
      helper.menu_item_class(:speakers).should == 'active'
    end
  end
end