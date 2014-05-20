module ApplicationHelper
  def full_title(title)
    default_title = "Tutorial"
  	if title.empty?
  		default_title
  	else
  		"#{default_title} | #{title}"
  	end
  end
end

