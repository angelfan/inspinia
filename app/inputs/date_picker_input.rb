class DatePickerInput < SimpleForm::Inputs::Base
  def input(*)
    @builder.text_field(attribute_name, input_html_options.merge(merge_options))
  end

  def merge_options
    format_value = value.to_date if value
    { class: 'form-control datepicker', value: format_value }
  end

  def value
    object.send(attribute_name)
  end
end
