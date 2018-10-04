class CreateBizOffers < ActiveRecord::Migration
  def change
    create_table :biz_offers do |t|
      t.string :offer
      t.references :business, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
