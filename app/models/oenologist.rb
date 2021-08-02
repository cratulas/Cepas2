class Oenologist < ApplicationRecord
    has_many :relationships
    has_many :wines, through: :relationships, dependent: :destroy
end
