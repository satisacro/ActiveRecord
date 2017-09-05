class Supplier < ApplicationRecord
    validates:name_supplier, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :telephone, length: { is: 10 }
    validates :telephone, numericality: { only_integer: true }
    validates :identification, numericality: { only_integer: true }
    validates :name, :telephone, :identification, presence: true
    validates :identification, uniqueness: true
    has_one:account
end
