class User < ApplicationRecord
  validates :name, :birthday, presence: true


  def age
    Date.today.year - birthday.year
  end
end
