class BmiCalculator
  include ActiveModel::Model
  attr_accessor :body_height, :body_weight

  validates :body_height, :body_weight, presence: true
end
