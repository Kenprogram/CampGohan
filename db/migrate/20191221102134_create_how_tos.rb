class CreateHowTos < ActiveRecord::Migration[6.0]
  def change
    create_table :how_tos do |t|
      t.string :howto
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
