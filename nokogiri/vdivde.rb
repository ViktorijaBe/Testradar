require 'rubygems'
require 'nokogiri'
require 'open-uri'




page = Nokogiri::HTML(open('http://www.vdivde-it.de/leistungsspektrum/innovation-technik-foerdern'))
page.css('div.projekt_beispiel').each do |el|
   puts el.text
end
