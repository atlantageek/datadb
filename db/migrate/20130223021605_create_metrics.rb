class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :file_path
      t.string :name
      t.string :units
      t.string :frequency
      t.string :seasonal
      t.date :last_updated

      t.timestamps
    end
  end
end
