class Slot < ApplicationRecord
  has_one :booking

  validates :date, presence: true
  validates :start_time, presence: true
  validates :date, uniqueness: { scope: :start_time, message: "já existe um horário nessa data e hora" }
end
