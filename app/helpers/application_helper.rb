# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def class_for_signifier(signifier)
    case signifier.to_s
      when '+'
        'add'
      when '-'
        'delete'
      else
        ''
    end
  end
  
end
