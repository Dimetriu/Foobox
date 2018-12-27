class CreateAssets < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    create_table :assets do |t|
      t.string :name, null: false, default: ""
      t.references :folder, foreign_key: true, index: { algorithm: :concurrently }

      t.timestamps
    end
  end
end
