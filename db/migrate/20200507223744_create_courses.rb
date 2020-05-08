class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :code_name
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
