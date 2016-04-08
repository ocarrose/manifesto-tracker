class CreateManifestoPromises < ActiveRecord::Migration
  def change
    create_table :manifesto_promises do |t|
      t.string :title
      t.string :description
      t.string :progress

      t.timestamps null: false
    end
  end
end
