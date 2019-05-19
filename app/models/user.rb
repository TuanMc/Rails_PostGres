class User < ApplicationRecord
    has_many:microposts
    validates :name, presence: true    # Replace FILL_IN with the right code.
    validates :email, format: { 
        with: URI::MailTo::EMAIL_REGEXP,
        message: 'is not valid'
        }, presence: true
end
