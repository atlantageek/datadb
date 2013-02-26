class CreateFacets < ActiveRecord::Migration
  def change
    create_table :facets do |t|
      t.string :name
      t.references :category

      t.timestamps
    end
    add_index :facets, :category_id
  end
end
