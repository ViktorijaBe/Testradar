require 'rubygems'
require 'nokogiri'
require 'open-uri'




page = Nokogiri::HTML(open('http://www.bmwi.de/DE/Service/ausschreibungen.html'))
page.css('#content > form > div.listView > table > tbody').each do |el|
   puts el.text
end
