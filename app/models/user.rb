class User < ApplicationRecord
  require 'active_support/core_ext'
  validates :name, :birthday, presence: true

  def age
    Date.today.year - birthday.year
  end
  
end
