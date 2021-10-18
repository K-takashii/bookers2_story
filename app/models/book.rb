class Book < ApplicationRecord
  belongs_to :user, optionals: true
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

  validates :rate, presence: true
  validates :rate, numericality: {
    # only_integer: true,
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1,
  }
  
  validates :param5, :numericality => { :less_than_or_equal_to => 5}
  validates :param5, :numericality => { :greater_than_or_equal_to => 1}
end
