class User < ApplicationRecord
    has_many :looks, dependent: :delete_all
end
