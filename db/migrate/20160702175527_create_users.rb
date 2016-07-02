class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :100
      t.string :password_digest
      t.string :name
      t.string :100
      t.string :twitter
      t.string :50

      t.timestamps null: false
    end
  end
end
