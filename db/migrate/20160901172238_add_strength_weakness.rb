class AddStrengthWeakness < ActiveRecord::Migration[5.0]
  def change
        add_column :teams, :strength, :string
        add_column :teams, :weakness, :string
  end
end
