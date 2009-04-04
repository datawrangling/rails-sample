class Monster < ActiveRecord::Base
  def picture_url
    "/images/#{name.downcase.gsub(/\s+/, '-')}.jpg"
  end
end
