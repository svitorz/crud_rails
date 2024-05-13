class Morador < ApplicationRecord
  validates :name, presence: true
  validates :cidade_atual, presence: true
end
