class CreateCharactersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :actor, foreign_key: true
      t.references :show, foreign_key: true
      t.string :catchphrase
    end
  end
end
