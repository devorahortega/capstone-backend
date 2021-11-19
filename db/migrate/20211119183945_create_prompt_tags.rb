class CreatePromptTags < ActiveRecord::Migration[6.1]
  def change
    create_table :prompt_tags do |t|
      t.integer :tag_id
      t.integer :prompt_id

      t.timestamps
    end
  end
end
