class Review < ApplicationRecord
  belongs_to :food
  validates :email, format: { with: /\b([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\b/,
                                    message: "Invalid address" }
end
