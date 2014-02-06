class BootstrapDatetimepickerInput < SimpleForm::Inputs::Base
  def input
    value = formatted_date(object.send(attribute_name))

    text_field_options = input_html_options.dup
    text_field_options['class'] = 'form-control form_datetime'
    text_field_options['placeholder'] = 'dd-mm-yyyy hh:mm'
    text_field_options['value'] = value

    return @builder.text_field(attribute_name, text_field_options).html_safe
  end

  def formatted_date(date)
    return if date.blank?
    date.strftime("%d-%m-%Y %H:%M")
  end
end
