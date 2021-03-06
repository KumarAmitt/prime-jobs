class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :title
      t.string :position
      t.string :location
      t.string :experience
      t.string :salary
      t.integer :openings
      t.string :employment_type
      t.string :education
      t.string :skills
      t.text :job_description
      t.boolean :archived, default: false

      t.timestamps
    end
    add_index('jobs', 'user_id')
  end
end
