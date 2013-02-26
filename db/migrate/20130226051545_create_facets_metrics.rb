class CreateFacetsMetrics < ActiveRecord::Migration
  def up
    create_table :facets_metrics, :id => false do |t|
      t.references :facets
      t.references :metrics
    end
  end

  def down
  end
end
