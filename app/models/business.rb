# frozen_string_literal: true

class Business < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :biz_offers
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  
  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%") 
  end
  
  def address_total
    [address, city, state, country].compact.join(', ')
  end
end
