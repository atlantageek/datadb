class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.date :dt
      t.float :val
      t.integer :metric_id

      t.timestamps
    end
  end
end
