class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.date :birth_date
      t.string :mobile

      t.timestamps
    end
  end
end
