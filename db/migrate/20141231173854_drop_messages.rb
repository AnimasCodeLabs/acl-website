class DropMessages < ActiveRecord::Migration
  def change
    revert do
      create_table "messages" do |t|
        t.string   "name",       null: false
        t.string   "email",      null: false
        t.text     "body",       null: false
        t.datetime "created_at"
        t.datetime "updated_at"
        t.string   "phone"
      end
    end
  end
end
