class CreatePrompts < ActiveRecord::Migration[6.1]
  def change
    create_table :prompts do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
