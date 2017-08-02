class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_carry_mens_or_womens_apparel
  before_destroy :check_employee_size

  private
  def must_carry_mens_or_womens_apparel
    puts "must at least carry either mens or womens apparel"
    if !mens_apparel && !womens_apparel
      errors.add :apparel, "must at least carry either mens or womens apparel"
    end
  end

  def check_employee_size
    employee_count = self.employees.length
    if employee_count > 0
      errors.add :nonempty, "cannot delete stores with employees"
      return false
    end
  end

end
