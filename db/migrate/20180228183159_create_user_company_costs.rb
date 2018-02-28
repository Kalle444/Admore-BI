class CreateUserCompanyCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_company_costs do |t|
      t.integer :amount
      t.references :user, foreign_key: true
      t.references :company_cost, foreign_key: true

      t.timestamps
    end
  end
end
