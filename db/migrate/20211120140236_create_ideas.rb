class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :discription
      t.text :target
      t.text :market
      t.text :help
      t.string :keyword
      t.timestamps
    end
  end
end
