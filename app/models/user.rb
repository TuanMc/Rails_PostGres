class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

    has_many:microposts
    validates :name, presence: true
    validates :email, format: { 
        with: VALID_EMAIL_REGEX,
        message: 'is not valid'
        }, presence: true
end
