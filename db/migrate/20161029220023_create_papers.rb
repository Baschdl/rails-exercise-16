class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title
      t.string :venue
      t.integer :year
      t.belongs_to :author, index: true

      t.timestamps null: false
    end
  end
end
