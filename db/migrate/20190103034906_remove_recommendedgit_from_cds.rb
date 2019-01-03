class RemoveRecommendedgitFromCds < ActiveRecord::Migration[5.2]
  def change
    remove_column :cds, :recommendedgi, :integer
  end
end
