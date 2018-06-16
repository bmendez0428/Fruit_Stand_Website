class Customer < ActiveRecord::Base
    
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, uniqueness: true
    validates :address, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zip, presence: true
    validates :phone, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

    validates :username, presence:true, uniqueness:true 
    validates :password, length: { minimum: 7 }
    has_secure_password
    
    
    def customername 
        "#{lastname }, #{firstname}"
    end
    
    #Each customer may purchase multiple fruits
    #if a customer is deleveted, delete all related sales 
    
    #associations
    has_many :product, dependent: :destroy
    
end

