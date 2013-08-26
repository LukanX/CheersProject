module ApplicationHelper
	def full_title(page_title)
    base_title = "Cheers Project"
    if page_title.empty?
      base_title
    else
      "It's 5 o'clock in #{page_title}"
    end
  end

   def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
