class CreateBookMarks < ActiveRecord::Migration
  def change
    create_table :book_marks do |t|
      t.string :title
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
