class Strain < ApplicationRecord
    has_many :assemblies
    has_many :wines, through: :assemblies, dependent: :destroy

    validates :name, presence: true, uniqueness: true
end
