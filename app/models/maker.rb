class Maker < ActiveRecord::Base
    has_many :works
    
    # name 반드시 있어야하고, 두 글자 이상
    # email 반드시 있어야하고, 세 글자 이상
    # phone_number 반드시 있어야하고, 8글자 이상
    
    validates :name,
        presence: true,
        length: {minimum: 2}
    
    validates :email,
        presence: true,
        length: {minimum: 3},
        format: {with: /\A[^@\s]+@[^@\s]+\z/ }
    
    validates :phone_number,
        presence: true,
        length: {minimum: 8}

end
