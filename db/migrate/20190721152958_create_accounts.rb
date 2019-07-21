class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.references :user, foreign_key: true, index: true
      t.references :category, foreign_key: true, index: true
      t.timestamps
    end
  end
end
