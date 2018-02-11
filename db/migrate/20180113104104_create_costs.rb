# frozen_string_literal: true

class CreateCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :costs do |t|
      t.string :name
      t.integer :amount
      t.boolean :company_cost
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
