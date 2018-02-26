class CreateCompanyCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :company_costs do |t|
      t.string :name
      t.integer :amount
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :admore_cost, default: false

      t.timestamps
    end
  end
end
