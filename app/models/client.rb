class Client < ApplicationRecord
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
	
    validates :cel, length: { is: 10 }
    validates :cel, numericality: { only_integer: true }
    validates :doc, numericality: { only_integer: true }
    after_validation do
		self.nombre = nombre.capitalize
	end
	
	validates :nombre, :cel, :doc, presence: true
    validates :doc, uniqueness: true
    belongs_to :books 
end
