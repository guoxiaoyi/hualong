module ApplicationHelper
  def pannel_list( pannel_obj )
    render partial: 'layouts/pannel_list', locals:{ pannel_list: pannel_obj}
  end

  def truncate_u(text, length = 20, truncate_string = "...")
    l=0
    char_array=text.unpack("U*")
    char_array.each_with_index do |c,i|
      l = l+ (c<127 ? 0.5 : 1)
      if l>=length
        return char_array[0..i].pack("U*")+(i<char_array.length-1 ? truncate_string : "")
      end
    end
    return text
  end

  def flash_message
    html = ""
    if flash[:notice]
      html << %{<div class="notice bg-success">#{flash[:notice]}</div>}
    end
    if flash[:alert]
      html << %{<div class="notice bg-warning">#{flash[:alert]}</div>}
    end
    if flash[:error]
      html << %{<div class="notice bg-danger">#{flash[:error]}</div>}
    end
    return sanitize(html)
  end
end
