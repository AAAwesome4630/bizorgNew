class CreateOrgOffers < ActiveRecord::Migration
  def change
    create_table :org_offers do |t|
      t.string :offer
      t.references :orginization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
