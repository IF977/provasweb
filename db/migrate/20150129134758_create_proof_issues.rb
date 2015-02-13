class CreateProofIssues < ActiveRecord::Migration
  def change
    create_table :proof_issues do |t|
      t.integer :proof_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
