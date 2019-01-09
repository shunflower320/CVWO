class CreateTags < ActiveRecord::Migration[5.2]
  def change
    drop_table :tags
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
