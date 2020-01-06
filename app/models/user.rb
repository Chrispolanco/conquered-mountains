class User < ApplicationRecord
    validates :username, :password, :email, :name, presence: true
    validates :password, length: {in: 8..20}
    validates :username, :email, uniqueness: true 
    validates :name, format: { without: /[0-9]/, message: "Only Letters" }

    has_secure_password
end
