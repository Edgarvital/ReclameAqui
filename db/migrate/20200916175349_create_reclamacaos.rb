class CreateReclamacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :reclamacaos do |t|
      t.string :titulo
      t.text :texto
      t.string :categoria
      t.string :empresa
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
