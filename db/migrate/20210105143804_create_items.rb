class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :description
      t.boolean :completed
      t.datetime :completed_at
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
