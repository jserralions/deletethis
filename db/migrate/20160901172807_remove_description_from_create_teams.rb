class RemoveDescriptionFromCreateTeams < ActiveRecord::Migration[5.0]
  def change
    remove_column :teams, :description, :text
  end
end
