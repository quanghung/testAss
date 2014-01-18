class CreateUserSkillDetails < ActiveRecord::Migration
  def change
    create_table :user_skill_details do |t|
      t.integer :user_skill_id
      t.integer :skill_detail_id
      t.timestamps
    end
    add_index "user_skill_details", ["id"], unique: true
    add_index "user_skill_details", ["skill_detail_id"], name: "index_user_skill_details_on_skill_detail_id_and_created_at"
    add_index "user_skill_details", ["user_skill_id"], name: "index_user_skill_details_on_user_skill_id_and_created_at"
  end
end

