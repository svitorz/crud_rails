class CreateMoradors < ActiveRecord::Migration[7.1]
  def change
    create_table :moradors do |t|
      t.string :name
      t.string :cidade_atual

      t.timestamps
    end
  end
end
