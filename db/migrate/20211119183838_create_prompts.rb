class CreatePrompts < ActiveRecord::Migration[6.1]
  def change
    create_table :prompts do |t|
      t.string :title
      t.string :content
      t.integer :prompt_tag_id

      t.timestamps
    end
  end
end
