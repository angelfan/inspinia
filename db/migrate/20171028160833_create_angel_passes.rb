class CreateAngelPasses < ActiveRecord::Migration[5.1]
  def change
    create_table :angel_passes do |t|
      t.string :title
      t.string :site
      t.string :account
      t.string :password

      t.timestamps
    end
  end
end
