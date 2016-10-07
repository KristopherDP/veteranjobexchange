require "HTTParty"
require "nokogiri"
require 'JSON'
require 'pry'

page = HTTParty.get("https://www.disabledperson.com")

parse_page = Nokogiri::HTML(page)

dp_jobs = []

parse_page.css('.content').css('a').map do |a|
  post_name = a.text
  dp_jobs << post_name
  end

Pry.start(binding)
