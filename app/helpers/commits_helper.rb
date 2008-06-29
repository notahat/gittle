module CommitsHelper

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
