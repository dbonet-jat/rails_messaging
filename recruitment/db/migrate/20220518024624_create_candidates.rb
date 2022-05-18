class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :fullname
      t.string :email
      t.boolean :hired

      t.timestamps
    end
  end
end
