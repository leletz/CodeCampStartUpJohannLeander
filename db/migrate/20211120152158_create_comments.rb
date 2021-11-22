class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :text
      t.string :email
      t.string :reference
      t.timestamps
      t.references :idea
    end
  end
end
