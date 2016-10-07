class PagesController < ApplicationController
  def home
  end

  def about
  end

  def jobs
    require "HTTParty"
    require "nokogiri"
    require 'JSON'

    page = HTTParty.get("https://www.disabledperson.com")

    parse_page = Nokogiri::HTML(page)

    @dp_jobs = []

    parse_page.css('.content').css('a').map do |a|
      post_name = a
      @dp_jobs << post_name
    end
  end

  def fix_url(str)
    #need to take the string from Nokogiri and take away the <a href>
    #need to grab the jobs/categories/CategoryName and assign it to a variable
    #need to prepend https://www.disabledperson.com to the beginning of variable
    #need to make the new string a link
  end
end
