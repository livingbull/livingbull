module ApplicationHelper

  def readable_enum(enum, val)
    enum.key(val).to_s.humanize
  end

  def options_for_select_enum(enum, selected_value = nil)
    options_for_select(enum_to_options_choices(enum), selected_value)
  end

  def enum_to_options_choices(enum)
    enum.collect {|k,v| [k.to_s.humanize, v]}
  end
end
