class User < ApplicationRecord
    has_many :looks, dependent: :destroy
end
