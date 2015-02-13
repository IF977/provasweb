class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :inunciation
      t.string :tipo
      t.string :dificulty
      t.references :subject, index: true

      t.timestamps
    end
  end
end
