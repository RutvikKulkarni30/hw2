class Actor < ApplicationRecord
  belongs_to :agent, optional: true
  has_many :cast_members, dependent: :destroy
  has_many :movies, through: :cast_members
end

