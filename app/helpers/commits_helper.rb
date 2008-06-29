module CommitsHelper

  def class_for_diff_line(line)
    case line.signifier
      when '+'
        'add'
      when '-'
        'delete'
      else
        ''
    end
  end
  
end
