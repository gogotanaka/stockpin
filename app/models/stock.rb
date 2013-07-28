class Stock < ActiveRecord::Base
  attr_accessible :code, :high, :low, :market, :name, :opening, :previousprice, :previousvolume, :price, :volume, :chart


  has_many :comments
  def self.convert(url)
    begin
      page = open(url)
    rescue OpenURI::HTTPError
      return
    end
    doc = Nokogiri::HTML(page.read, nil, 'utf-8')
  end
end
