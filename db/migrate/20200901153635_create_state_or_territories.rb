class CreateStateOrTerritories < ActiveRecord::Migration[5.2]
  def change
    create_table :state_or_territories do |t|
      t.string :name

      t.timestamps
    end
  end
end
