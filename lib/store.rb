class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0}
  validate :must_carry_mens_or_womens_apparel

  private
  def must_carry_mens_or_womens_apparel
    puts "must at least carry either mens or womens apparel"
    if !mens_apparel && !womens_apparel
      errors.add :mens_apparel
    end
  end

end
