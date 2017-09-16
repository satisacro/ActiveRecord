class Editorial < ApplicationRecord
    validates :city, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :nombre, :cel, :doc, presence: true
    before_validation :ensure_nombre_has_value
    
    private
    def ensure_nombre_has_a_value
      if nombre.nil?
        self.nombre = doc unless doc.blank?
      end
    end
    validates :name, length: { minimum: 2 }
    validates :email, length: { maximum: 500 }
end
