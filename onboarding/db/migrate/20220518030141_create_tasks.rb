class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :employee
      t.string :email
      t.string :task

      t.timestamps
    end
  end
end
