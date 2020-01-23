require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

email = Nokogiri::HTML(open("https://annuaire-des-mairies.com/val-d-oise.html"))

def get_townhall_email(townhall_url)
    email = townhall_url.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    return email.text
end

def get_townhall_urls(email)
    array_emails = []
    array_villes = []
    array_fin = []
    email.xpath('//td/p/a').each do |ville|
          ville = ville.text
          array_villes << ville
    end

end

get_townhall_urls(email)
