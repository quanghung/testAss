class CreateDetailSkills < ActiveRecord::Migration
  def change
    create_table :detail_skills do |t|
      t.string   "name",        limit: 512,             null: false
      t.integer  "skill_id",                                 null: false
      t.timestamps 
    end
  
    add_index "detail_skills", ["id"], unique: true
    add_index "detail_skills", ["skill_id"], name: "index_detail_skills_on_skill_id_and_created_at"
  end
end