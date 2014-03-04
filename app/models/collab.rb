class Collab < ActiveRecord::Base
  validates :question, presence: true, length: { minimum: 8 }
  has_and_belongs_to_many :users
end
