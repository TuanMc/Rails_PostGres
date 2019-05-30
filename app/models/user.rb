class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

    has_many:microposts
    validates :name, presence: true
    validates :email, uniqueness: true, format: {
        with: VALID_EMAIL_REGEX,
        message: 'is not valid'
        }, presence: true

    # def self.method() - Ham cua class, Ex: User.method()

    def auth(input_password) # Can mot doi tuong tro vao, Ex: visitor.auth()
        self.password == input_password
    end
end
