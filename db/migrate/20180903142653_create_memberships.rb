class CreateMemberships < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    create_table :memberships do |t|
      t.references :user, foreign_key: true, index: { algorithm: :concurrently }
      t.references :group, foreign_key: true, index: { algorithm: :concurrently }

      t.timestamps
    end
  end
end
