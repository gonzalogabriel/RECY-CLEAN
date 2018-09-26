class RecyclingType < ApplicationRecord
    has_and_belongs_to_many :collectionCenters
    has_many :vouchers
end
