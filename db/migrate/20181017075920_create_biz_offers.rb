class CreateBizOffers < ActiveRecord::Migration
  def change
    create_table :biz_offers do |t|
      t.references :business, index: true, foreign_key: true
      t.integer :percentage, default: 10, null:false
      t.integer :requirement, default: 0, null: false
      t.string :offer

      t.timestamps null: false
    end
  end
end
