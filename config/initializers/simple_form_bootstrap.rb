# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.error_notification_class = 'alert alert-danger'
  config.button_class = 'btn btn-w-m btn-primary'
  config.boolean_label_class = nil
  config.default_wrapper = :base_input

  config.wrappers :base_input, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'font-normal'
    b.wrapper tag: :div do |ba|
      ba.use :input, class: 'form-control'
      ba.use :error, wrap_with: { tag: 'span', class: 'help-block' }
      ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
    end
  end

  config.wrappers :select2, tag: :div, class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: 'font-normal'
    b.wrapper tag: :div do |ba|
      ba.use :input, class: 'form-control chosen-select'
      ba.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      ba.use :error, wrap_with: { tag: 'span', class: 'help-block' }
    end
  end

  config.wrappers :tags_input, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: 'font-normal'
    b.wrapper tag: :div do |ba|
      ba.use :input, class: 'form-control chosen-select'
      ba.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      ba.use :error, wrap_with: { tag: 'span', class: 'help-block' }
    end
  end

  # Wrappers for forms and inputs using the Bootstrap toolkit.
  # Check the Bootstrap docs (http://getbootstrap.com)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  # config.wrapper_mappings = {
  #   check_boxes: :vertical_radio_and_checkboxes,
  #   radio_buttons: :vertical_radio_and_checkboxes,
  #   file: :vertical_file_input,
  #   boolean: :vertical_boolean,
  # }
end
