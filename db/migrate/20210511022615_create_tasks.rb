class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :title
      t.date :start_date
      t.date :end_date
      t.date :update_date
      t.text :memo

      t.timestamps
    end
  end
end
