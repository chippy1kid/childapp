class Client < ActiveRecord::Base
  attr_accessible :alias, :city, :dob, :mother_name, :name, :sequence_number, :sex, :state, :street, :string
end
