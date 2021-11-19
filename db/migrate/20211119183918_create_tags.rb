class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :tag
      t.integer :prompt_tag_id

      t.timestamps
    end
  end
end
