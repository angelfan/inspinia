module ApplicationHelper
  def is_active_controller(controller_name, class_name = nil)
    if controller_name.is_a?(String)
      if params[:controller] == controller_name
        class_name.nil? ? 'active' : class_name
      end
    elsif controller_name.is_a?(Array)
      if params[:controller].in? controller_name
        class_name.nil? ? 'active' : class_name
      end
    end
  end
end
