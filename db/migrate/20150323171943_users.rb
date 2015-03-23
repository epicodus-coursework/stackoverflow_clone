class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :email, :string

      t.timestamps
    end
  end
end
