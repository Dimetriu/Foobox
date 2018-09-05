class CreateFolders < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    create_table :folders do |t|
      t.string :name, null: false, default: ""
      t.integer :access, default: 0
      t.references :category, foreign_key: true, index: { algorithm: :concurrently }
      t.integer :parent_id, index: { algorithm: :concurrently }

      t.timestamps
    end
  end
end
