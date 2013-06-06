class Signature < ActiveRecord::Base
   attr_accessible :name, :position, :contact, :message, :link, :skype, :address, :image
mount_uploader :image, ImageUploader

#has_attached_file :image, :styles => { :small => "150x150>" },
 #                 :url  => ":assets_host/public/:attachment/:id/:style/:filename",
  #                :path => ":rails_root/public/public/:attachment/:id/:style/:filename"

  #delegate :url, :to => :image



#private 
  
 # Paperclip.interpolates :assets_host  do |attachment, style|
  #  if Rails.env.production?
      'http://signatures.zando.co.za'
   # else
      'http://localhost:3000'
   # end
 # end

 def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['name LIKE ?', search_condition])
end
end
