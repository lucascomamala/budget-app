class Log < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups

  validates :name, presence: true, length: { maximum: 75 }
  validates :amount, presence: true, numericality: true
end
