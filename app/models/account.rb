class Account< ApplicationRecord
    validates:account_owner, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :identification, numericality: { only_integer: true }
    validates :name, :identification, presence: true
    validates :identification, uniqueness: true
    belongs_to:supplier
end
