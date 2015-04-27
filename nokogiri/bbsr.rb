require 'rubygems'
require 'nokogiri'
require 'open-uri'




page = Nokogiri::HTML(open('http://www.bbsr.bund.de/BBSR/DE/Aktuell/Forschungsprojekte/forschungsprojekte_node.html'))
page.css('table#ausschreibung').each do |el|
   puts el.text
end
