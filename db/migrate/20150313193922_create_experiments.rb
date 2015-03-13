class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.integer :user_id
      t.integer :topoType
      t.string :topology
      t.string :title
      t.boolean :publish

      t.timestamps
    end
  end
end
