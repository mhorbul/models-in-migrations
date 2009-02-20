class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.float :budget
      t.datetime :deadline
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
