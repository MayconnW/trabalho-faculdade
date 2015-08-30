class CreateXmls < ActiveRecord::Migration
  def change
    create_table :xmls do |t|
      t.string :key_access
      t.text :xml_text

      t.timestamps null: false
    end
  end
end
