class CreateProofs < ActiveRecord::Migration
  def change
    create_table :proofs do |t|
      t.string :message
      t.string :header
      t.string :token
      t.date :closingDate
      t.time :duration
      t.string :status
      t.integer :questionsNumber
      t.references :subject, index: true
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
