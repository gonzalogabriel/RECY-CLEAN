class Voucher < ApplicationRecord
  belongs_to :user
  belongs_to :recyclingType
  belongs_to :collectionCenter
end
