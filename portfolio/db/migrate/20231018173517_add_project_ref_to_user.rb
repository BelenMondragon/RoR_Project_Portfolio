class AddProjectRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :project, null: false, foreign_key: true
  end
end
