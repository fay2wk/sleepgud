class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates_format_of :email, :with => /@/

  validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 8..20},
                       :on => :create
  validates :password, :confirmation => true,
                       :length => {:within => 8..20},
                       :allow_blank => true,
                       :on => :update

  has_many :sleep_cycles
  accepts_nested_attributes_for :sleep_cycles
end
