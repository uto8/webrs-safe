class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :license
      t.boolean :admin

      t.timestamps
    end
  end
end
