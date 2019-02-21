class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :date
      t.text :body
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
