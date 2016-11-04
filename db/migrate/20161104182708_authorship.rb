class Authorship < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.belongs_to :paper
      t.belongs_to :author
      t.timestamps
    end
  end
end
