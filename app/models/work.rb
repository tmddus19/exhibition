class Work < ActiveRecord::Base
    mount_uploader(:image, ImageUploader)
    validates_presence_of :image # carrierwave 를 통해 검증
    
    belongs_to :maker
    
    validates :title, 
        presence: true
    
    validates :desc, 
        presence: true, 
        length: {minimum: 3}
    validates :image,
        presence: true
end
