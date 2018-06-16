class Product < ActiveRecord::Base
    validates :fruitname, uniqueness: true, presence: true
    validates :supplier, presence: true
    validates :color, presence: true
    validates :price, presence: true
    validates :currentinventoryweight, presence: true
    validates :imagepath, presence: true, uniqueness: true  
    
    #has_many:fruitsale, dependent: :destroy
    
   # belongs_to :supplier
end
