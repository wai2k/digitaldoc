module ApplicationHelper
  
  def menu_item_class(item)
    active = case item
      when :speakers
        controller_name == "speakers"
      when :schedule
        controller_name == "pages" && action_name == "schedule"
      else
        controller_name == "pages" && action_name == "index"
      end
    active ? "active" : nil
  end
  
end
