class GroupInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    content = options.delete(:group_btn)
    template.content_tag(:div, class: 'input-group') do
      template.concat @builder.text_field(attribute_name, merge_wrapper_options(input_html_options, wrapper_options))
      template.concat group_btn_content(content)
    end
  end

  def group_btn_content(content)
    template.content_tag(:span, class: 'input-group-btn') do
      content.call.html_safe
    end
  end
end
