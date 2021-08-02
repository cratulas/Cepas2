class AddScoreToWine < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :score, :float
  end
end
