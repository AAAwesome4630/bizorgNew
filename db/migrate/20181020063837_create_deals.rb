class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.integer :business_id
      t.integer :originzation_id
      t.boolean :biz_accepted
      t.boolean :org_accepted
      t.integer :biz_offer_id
      t.integer :percentage
      t.integer :requirement
      t.string :offer

      t.timestamps null: false
    end
  end
end
