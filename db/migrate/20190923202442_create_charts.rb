class CreateCharts < ActiveRecord::Migration[5.1]
  def change
    create_table :charts do |t|

      t.string :title, :null => false
      t.integer :progress, :default => 0

      t.timestamps
    end
  end
end
