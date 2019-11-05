class CreateGamings < ActiveRecord::Migration[5.2]
  def change
    create_table :gamings do |t|
      t.string :email

      t.timestamps
    end
  end
end
