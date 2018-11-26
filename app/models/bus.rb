class Bus < ApplicationRecord
    validates :prefix, presence: true
    validates :line, presence: false
    validates :load, presence: false
    validates :arrival_time, presence: false
    validates :py, presence: false
    validates :px, presence: false
end
