class User < ApplicationRecord
  validates :username, presence: true,
                       uniqueness: true,
                       length: { minimum: 4 }
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /@/}
  validates :password, length: { in: 6..20 }

end
