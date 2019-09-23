class Chart < ApplicationRecord
  validates :title, presence: true
  validates :progress, inclusion: { in: 0..100 }, presence: true
end
