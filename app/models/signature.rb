class Signature < ActiveRecord::Base
   attr_accessible :name, :position, :contact, :message, :link, :skype, :address

 def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['name LIKE ?', search_condition])
end
end
