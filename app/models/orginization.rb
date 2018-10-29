# frozen_string_literal: true

class Orginization < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :address
  validates_presence_of :zipcode
  validates_presence_of :state
  validates_presence_of :city
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :phone_number
  validates_presence_of :type_of
  validates_presence_of :description
  include DeviseTokenAuth::Concerns::User
  
  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%") 
  end
  
  def address_total
    [address, city, state, country].compact.join(', ')
  end
  
end
