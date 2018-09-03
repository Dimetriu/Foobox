class CreateCategories < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    create_table :categories do |t|
      t.string :name, null: false, default: ""
      t.string :color, null: false, default: ""
      t.references :user, foreign_key: true, index: { algorithm: :concurrently }

      t.timestamps
    end
  end
end
