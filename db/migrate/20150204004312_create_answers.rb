class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :proof_answered, index: true
      t.references :proof_issue, index: true
      t.references :alternative, index: true

      t.timestamps
    end
  end
end
