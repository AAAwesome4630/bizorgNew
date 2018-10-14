# frozen_string_literal: true

class Orginization < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :org_offers
  
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
end
