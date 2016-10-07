module ApplicationHelper

  def fix_url(str)
    str.starts_with?('http://www.disabledperson.com') ? str : "http://www.disabledperson.com#{str}"
  end

end
