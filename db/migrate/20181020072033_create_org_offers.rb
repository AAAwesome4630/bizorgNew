class CreateOrgOffers < ActiveRecord::Migration
  def change
    create_table :org_offers do |t|
      t.references :orginizations, index: true, foreign_key: true
      t.integer :members
      t.integer :percentage
      t.string :offer

      t.timestamps null: false
    end
  end
end
