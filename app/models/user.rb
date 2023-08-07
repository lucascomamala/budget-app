class User < ApplicationRecord
  has_many :logs
  has_many :groups
end
