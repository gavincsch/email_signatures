class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :name
      t.string :position
      t.string :contact
      t.string :skype
      t.string :address
      t.string :link
      t.string :message
      t.timestamps
    end
  end
end
