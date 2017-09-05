class Editorial < ApplicationRecord
    validates :city, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :nombre, :cel, :doc, presence: true
    validates :name, length: { minimum: 2 }
    validates :email, length: { maximum: 500 }
end
