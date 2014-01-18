class CreateSkillDetails < ActiveRecord::Migration
  def change
    create_table :skill_details do |t|
      t.integer :skill_id
      t.string :name
      t.timestamps
    end
   add_index "skill_details", ["id"], unique: true
   add_index "skill_details",  ["skill_id"], name: "index_skill_details_on_skill_id_and_created_at"
  end
end