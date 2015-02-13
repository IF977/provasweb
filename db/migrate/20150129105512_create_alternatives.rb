class CreateAlternatives < ActiveRecord::Migration
  def change
    create_table :alternatives do |t|
      t.string :description
      t.boolean :correct
      t.references :issue, index: true

      t.timestamps
    end
  end
end
