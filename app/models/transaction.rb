class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :category

  KINDS = %w[income expense]

  validates :description, presence: true
  validates :amount, presence: true
  validates :kind, inclusion: { in: KINDS }
  validates :date, presence: true

  scope :income, -> { where(kind: "income") }
  scope :expense, -> { where(kind: "expense") }

  def self.balance
    income.sum(:amount) - expense.sum(:amount)
  end

  def income?
    kind == "income"
  end

  def expense?
    kind == "expense"
  end
end
