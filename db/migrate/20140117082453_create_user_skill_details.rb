class CreateUserSkillDetails < ActiveRecord::Migration
  def change
    create_table :user_skill_details do |t|
      t.integer  "detail_skill_id",                                 null: false
      t.integer  "user_skill_id",                                 null: false
      t.timestamps
    end

    add_index "user_skill_details", ["id"], unique: true
    add_index "user_skill_details", ["detail_skill_id"], name: "index_user_skill_details_on_detail_skill_id_and_created_at"
    add_index "user_skill_details", ["user_skill_id"], name: "index_user_skill_details_on_user_skill_id_and_created_at"
  end
end