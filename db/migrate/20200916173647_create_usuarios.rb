class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :nome

      t.timestamps
    end
  end
end
