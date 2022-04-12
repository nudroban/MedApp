class AddUserIdInRecomendations < ActiveRecord::Migration[7.0]
  def change
    add_column :recomendations, :user_id, :integer
  end
end
