class Article < ActiveRecord::Base
  has_many :impressions, :as=>:impressionable

  def impression_count
    impressions.size
  end

  def unique_impression_count
    impressions.group(:ip_address).size #UNTESTED: might not be correct syntax
  end
end
