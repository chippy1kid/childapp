class Children < ActiveRecord::Base
  attr_accessible :alias, :c_city, :c_clinic, :c_state, :c_street, :c_telephone, :city, :d_city, :d_clinic, :d_pediatrician, :d_state, :d_street, :d_telephone, :dob, :e_street, :e_state,:e_city, :e_alias, :e_name, :e_relationship, :e_telephone, :first_name, :last_name, :mother_name, :sequence_number, :sex, :state, :street, :diagnosis, :immunization

  validates :sequence_number, presence: true, length: { maximum: 10 } 
  validates :first_name, presence: true, length: { maximum: 50 } 
  validates :last_name, presence: true, length: { maximum: 50 } 
  validates :dob, presence: true, length: { maximum: 10 } 
  validates :mother_name, presence: true, length: { maximum: 50 }
  validates :sex, presence: true, length: { maximum: 5 } 

 def self.search(search)
  if search
  	# format: {case_sensitive: false}
  	search_condition = "%" + search + "%"
    find(:all, :conditions => [' first_name ILIKE ? OR last_name ILIKE ? OR alias ILIKE ? OR mother_name ILIKE ? ' , search_condition, search_condition, search_condition, search_condition ])
  else
    find(:all)
  end
 end


 
  
end
