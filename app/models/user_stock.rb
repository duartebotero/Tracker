class UserStock < ApplicationRecord
  belongs_to :user
  belongs_to :atock
end
