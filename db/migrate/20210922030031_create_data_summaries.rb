class CreateDataSummaries < ActiveRecord::Migration[6.1]
  def change
    create_table :data_summaries do |t|
      t.string :data

      t.timestamps
    end
  end
end
