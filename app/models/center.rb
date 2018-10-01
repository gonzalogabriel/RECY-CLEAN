class Center < ApplicationRecord
    has_and_belongs_to_many :recyclingTypes
    has_many :vouchers
end
