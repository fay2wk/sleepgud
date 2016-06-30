class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise devise :database_authenticatable, :trackable, :timeoutable, :lockable
end
