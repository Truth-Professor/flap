class AddRecommendedToCds < ActiveRecord::Migration[5.2]
  def change
    add_column :cds, :recommended, :string
  end
end
