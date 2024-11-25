class CreateGorillaGlasses < ActiveRecord::Migration[8.0]
  def change
    create_table :gorilla_glasses do |t|
      t.string :partID
      t.string :materialType
      t.string :dimensions
      t.string :qualityRating

      t.timestamps
    end
  end
end
