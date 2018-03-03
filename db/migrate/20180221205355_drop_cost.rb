# frozen_string_literal: true

class DropCost < ActiveRecord::Migration[5.1]
  def change
    drop_table :costs
  end
end
