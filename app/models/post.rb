class Post < ApplicationRecord
    has_many :comments
    validates :title, presence: :true, length: { minimum: 5 }
end


# , class_name: "comment", foreign_key: "reference_id"